<?php

class Arr {

    protected array $arr = [];

    public function __construct(array $arr = []) {
        $this->arr = $arr;
    }
    
    public function sorting($order = 'asc')
    {
        $arr = $this->arr;
        if($order == 'desc') rsort($arr);  else {
            sort($arr);
        }
        return $arr;
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

echo "<br/>";
echo "ASC - ";
print_r($arr->sorting());

echo "<br/>";
echo "DESC - ";
print_r($arr->sorting('desc'));
