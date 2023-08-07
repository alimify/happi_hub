<?php

namespace App\Traits;

trait ModelSearchAble
{
    /**
     * scopeSearchable
     *
     * @param  mixed $query
     * @param  mixed $searchSettings
     * @return void
     */
    public function scopeSearchable($query, array $searchSettings)
    {
        foreach ($searchSettings as $value) {
            if ($value['relation'] === '') {
                if ($value['type'] === 'where') {
                    if ($value['column_name'] == 'status') {
                        $query->when($value['value'] > -1, function ($query) use ($value) {
                            $query->where($value['column_name'], $value['value']);
                        });
                    } else {
                        $query->when($value['value'], function ($query) use ($value) {
                            $query->where($value['column_name'], $value['value']);
                        });
                    }
                } elseif ($value['type'] === 'like') {
                    $query->when($value['value'], function ($query) use ($value) {
                        $query->where($value['column_name'], 'LIKE', '%' . $value['value'] . '%');
                    });
                } elseif ($value['type'] == 'where_raw') {
                    $query->whereRaw($value['where_raw_query'] . " like '%" . $value['value'] . "%' ");
                }
            } else {
                if ($value['type'] === 'like') {
                    $query->when($value['value'], function ($query) use ($value) {
                        $query->whereHas($value['relation'], function ($q) use ($value) {
                            $q->where($value['column_name'], 'like', '%' . $value['value'] . '%');
                        });
                    });
                } elseif ($value['type'] == 'where_raw') {
                    $query->when($value['value'], function ($query) use ($value) {
                        $query->whereHas($value['relation'], function ($q) use ($value) {
                            $q->whereRaw($value['where_raw_query'] . " like '%" . $value['value'] . "%' ");
                        });
                    });
                } else {
                    $query->when($value['value'], function ($query) use ($value) {
                        $query->whereHas($value['relation'], function ($q) use ($value) {
                            $q->where($value['column_name'], $value['value']);
                        });
                    });
                }
            }
        }
    }
}
