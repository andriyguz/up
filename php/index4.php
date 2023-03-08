<?php

echo '<hr>';
echo '<br>';

$goods = [
    [
        'title' => 'iphone 12 pro max',
        'price' => 800,
        'state' => 'new',
    ],
    [
        'title' => 'iphone 11 pro max',
        'price' => 600,
        'state' => 'new',
    ],
    [
        'title' => 'iphone 8 plus',
        'price' => 200,
        'state' => 'used',
    ],
];

$goods_1 = [
    [
        'title' => 'iphone 12 pro max',
        'price' => 800,
        'state' => 'used',
    ],
    [
        'title' => 'iphone 11 pro max',
        'price' => 800,
        'state' => 'new',
    ],
    [
        'title' => 'iphone 8 plus',
        'price' => 2600,
        'state' => 'new',
    ],
];

$arr = array('Max', 'Olga', 'Taras', 'Andr', 'Nazar', 'Vlad');
$arr2 = array('Max', 'Olga', 'Andr', 'Taras');


/*
count
array_diff
array_intersect
array_key_exists
array_keys
array_values
array_merge
array_rand
array_reverse
compact
extract
arsort
asort
sort
rsort
array_combine
array_search
array_shift
array_unique
array_unshift
array_flip
array_pop
array_push
in_array
list
*/

echo count($arr);

echo '<hr>';
echo '<br>';

echo '<pre>';
$res = array_diff($arr,$arr2);
print_r($res);
echo '</pre>';

echo '<hr>';
echo '<br>';

echo '<pre>';
print_r(array_keys($goods[0]));
echo '</pre>';

echo '<hr>';
echo '<br>';

echo (array_key_exists("title",$goods[0]));

echo '<hr>';
echo '<br>';

print_r(array_values($arr));
print_r(array_values($goods[0]));

echo '<hr>';
echo '<br>';

//array_merge();

echo '<hr>';
echo '<br>';

$a = 5;
$b = 6;
$c = 7;

if($a){
    echo '$a ='.$a;
}
if(!$a){
    echo '$a ='.$a;
}

echo '<hr>';
echo '<br>';

if($a == 5 && $b > 5 && $c >=7){
    echo '$a = '.$a. '$b > 5';
}

echo '<hr>';
echo '<br>';

if(($a > 5 || $b > 5 || $c > 5) && $a==5){
    echo '$a або $b або $c більше 5';
}

echo '<hr>';
echo '<br>';






echo '<hr>';
echo '<br>';