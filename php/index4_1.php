<?php

echo '<hr>';
echo '<br>';

$arr1 = [
    [
        'color' => 'red',
        'fruit' => 'apple',
        'country' => 'Ukraine',
    ],
    [
        'color' => 'yellow',
        'fruit' => 'banana',
        'country' => 'Ecuador',
    ],
    [
        'color' => 'orange',
        'fruit' => 'tangerine',
        'country' => 'Spain',
    ],
];
echo '<pre>';
print_r($arr1);
echo '</pre>';

echo '<hr>';
echo '<br>';

$arr2 = [2, 6, [1, 5, 9], 15, [4, 6, 8], 28];
echo '<pre>';
print_r($arr2);
echo '</pre>';

echo '<hr>';
echo '<br>';

$arr3 = array(1, 3, 7, 15, 31, 63, 127);
echo '<pre>';
print_r($arr3);
echo '</pre>';

$arr5 = array('q', 'w', 'e', 'r', 't', 'y', 'u');
echo '<pre>';
print_r($arr5);
echo '</pre>';

$arr4 = ['C' => 200, 'B' => 100, 'A' => 300];
echo '<pre>';
print_r($arr4);
echo '</pre>';

$arr6 = array('q', 'w', 'e', 'r', 't', 'y', 'u', 'w', 'e', 'u');
echo '<pre>';
print_r($arr6);
echo '</pre>';

$arr7 = array(21, 23, 26);
echo '<pre>';
print_r($arr7);
echo '</pre>';

echo '<hr>';
echo '<br>';


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

echo '<hr>';
echo '<br>';

//count
echo "count";
echo '<br>';

echo count($arr1);
echo '<br>';
echo count($arr2);
echo '<br>';
echo count($arr3);
echo '<br>';
var_dump($arr1);
echo '<br>';
var_dump($arr2);
echo '<br>';
var_dump($arr3);

echo '<hr>';
echo '<br>';

//array_diff
echo "array_diff";
echo '<br>';

echo '<pre>';
$result1 = array_diff($arr1,$arr2);
print_r($result1);
echo '</pre>';

echo '<br>';

echo '<pre>';
$result2 = array_diff($arr1,$arr3);
print_r($result2);
echo '</pre>';

echo '<br>';

echo '<pre>';
$result3 = array_diff($arr2,$arr3);
print_r($result3);
echo '</pre>';

echo '<hr>';
echo '<br>';

//array_intersect
echo "array_intersect";
echo '<br>';

echo '<pre>';
$result = array_intersect($arr2, $arr3);
print_r($result);
echo '</pre>';

echo '<hr>';
echo '<br>';

//array_key_exists
echo "array_key_exists";
echo '<br>';

echo array_key_exists("color",$arr1[2]);
echo array_key_exists("15",$arr3);

echo '<hr>';
echo '<br>';

//array_keys
echo 'array_keys';
echo '<br>';

echo '<pre>';
print_r(array_keys($arr1[0]));
echo '</pre>';
echo '<br>';

echo '<hr>';
echo '<br>';

//array_values
echo 'array_values';
echo '<br>';

echo '<pre>';
print_r(array_values($arr1));
echo '</pre>';

echo '<pre>';
print_r(array_values($arr2));
echo '</pre>';
echo '<br>';
echo '<pre>';
print_r(array_values($arr3));
echo '</pre>';
echo '<br>';

echo '<hr>';
echo '<br>';

//array_merge
echo 'array_merge';
echo '<br>';

$result1 = array_merge($arr1, $arr2);
$result2 = array_merge($arr2, $arr3);
echo '<pre>';
print_r($result1);
echo '</pre>';
echo '<br>';
echo '<pre>';
print_r($result2);
echo '</pre>';

echo '<hr>';
echo '<br>';

//array_rand
echo 'array_rand';
echo '<br>';

$rand1 = array_rand($arr1, 1);
echo $arr1[$rand1[2]];
$rand2 = array_rand($arr3, 2);
print_r($arr3[$rand2[2]]."\n");
print_r($arr3[$rand2[4]]."\n");

echo '<hr>';
echo '<br>';

//array_reverse
echo 'array_reverse';
echo '<br>';

$revers = array_reverse($arr3);
echo '<pre>';
print_r($revers);
echo '</pre>';
echo '<br>';
$revers1 = array_reverse($arr1);
echo '<pre>';
print_r($revers1);
echo '</pre>';

echo '<hr>';
echo '<br>';

//compact
echo 'compact';
echo '<br>';

$ev = "black";
$ev1 = "white";
$ev2 = "blue";
$ev3 = ["ev1", "ev2"];
$res3 = compact("ev", $ev3);
echo '<pre>';
print_r($res3);
echo '</pre>';
echo '<br>';

echo '<hr>';
echo '<br>';

//extract
echo 'extract';
echo '<br>';
/*
$A = 400;
extract($arr4, EXTR_OVERWRITE, $A);
echo '<pre>';
print_r($arr4);
echo '</pre>';
*/

echo '<hr>';
echo '<br>';

//arsort
echo 'arsort';
echo '<br>';

arsort($arr4);
foreach ($arr4 as $key => $val) {
    echo "$key = $val\n";
}

echo '<hr>';
echo '<br>';

//asort
echo 'asort';
echo '<br>';

asort($arr4);
foreach ($arr4 as $key => $val) {
    echo "$key = $val\n";
}

echo '<hr>';
echo '<br>';

//sort
echo 'sort';
echo '<br>';

sort($arr4);
foreach ($arr4 as $key => $val) {
    echo "$key = $val\n";
}

echo '<hr>';
echo '<br>';

//rsort
echo 'rsort';
echo '<br>';

rsort($arr4);
foreach ($arr4 as $key => $val) {
    echo "$key = $val\n";
}

echo '<hr>';
echo '<br>';

//array_combine
echo 'array_combine';
echo '<br>';

$ar1 = array_combine($arr3, $arr5);
echo '<pre>';
print_r($ar1);
echo '</pre>';

$ar2 = array_combine($arr5, $arr3);
echo '<pre>';
print_r($ar2);
echo '</pre>';

echo '<hr>';
echo '<br>';

//array_search
echo 'array_search';
echo '<br>';

$key1 = array_search('red', $arr1);
echo '$key1='.$key1;
echo '<br>';
$key2 = array_search(200, $arr4);
echo '$key2='.$key2;

echo '<hr>';
echo '<br>';

//array_shift
echo 'array_shift';
echo '<br>';

$ar3 = array_shift($arr1);
echo '<pre>';
print_r($ar3);
echo '</pre>';

$ar4 = array_shift($arr3);
echo '<pre>';
print_r($ar4);
echo '</pre>';

echo '<hr>';
echo '<br>';

//array_unique
echo 'array_unique';
echo '<br>';

$ar5 = array_unique($arr6);
var_dump($ar5);
echo '<pre>';
print_r($ar5);
echo '</pre>';

echo '<hr>';
echo '<br>';

//array_unshift
echo 'array_unshift';
echo '<br>';

array_unshift($arr4, 500, 800);
echo '<pre>';
print_r($arr4);
echo '</pre>';

echo '<hr>';
echo '<br>';

//array_flip
echo 'array_flip';
echo '<br>';

$ar6 = array_flip($arr3);
echo '<pre>';
print_r($ar6);
echo '</pre>';

$ar7 = array_flip($arr4);
echo '<pre>';
print_r($ar7);
echo '</pre>';

$ar8 = array_flip($arr5);
echo '<pre>';
print_r($ar8);
echo '</pre>';

echo '<hr>';
echo '<br>';

//array_pop
echo 'array_pop';
echo '<br>';

$ar9 = array_pop($arr1);
echo '<pre>';
print_r($ar9);
echo '</pre>';

$ar10 = array_pop($arr4);
echo '<pre>';
print_r($ar10);
echo '</pre>';

echo '<hr>';
echo '<br>';

//array_push
echo 'array_push';
echo '<br>';

array_push($arr4, 900, 700);
echo '<pre>';
print_r($arr4);
echo '</pre>';

echo '<hr>';
echo '<br>';

//in_array
echo 'in_array';
echo '<br>';

if (in_array('red', $arr1)) {
    echo "наявний елемент red";
}
if (in_array(300, $arr4)) {
    echo "наявний елемент 300";
}

echo '<hr>';
echo '<br>';

//list
echo 'list';
echo '<br>';

list($aa, $bb, $cc) = $arr7;
echo $aa + $bb + $cc;

echo '<hr>';
echo '<br>';



echo '<hr>';
echo '<br>';