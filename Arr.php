<?php

class Arr {

    protected array $arr = [];

    public function __construct(array $arr = []) {
        $this->arr = $arr;
    }

    public function min()
    {
        return min($this->arr);
    }

    public function max()
    {
        return max($this->arr);
    }
}

$arrInts = [1,2,3,4,5];
$arr = new Arr($arrInts);

echo "Max - ";
echo $arr->max();

echo "<br/>";

echo "Min - ";
echo $arr->min();

