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

echo '<hr>';
echo '<br>';

//arsort
echo 'arsort';
echo '<br>';

echo '<pre>';
print_r(arsort($arr1));
echo '</pre>';

echo '<hr>';
echo '<br>';

//asort
echo 'asort';
echo '<br>';

echo '<pre>';
print_r(asort($arr2));
echo '</pre>';

echo '<hr>';
echo '<br>';

//sort
echo 'sort';
echo '<br>';

echo '<pre>';
print_r(sort($arr3));
echo '</pre>';

echo '<hr>';
echo '<br>';



echo '<hr>';
echo '<br>';



echo '<hr>';
echo '<br>';



echo '<pre>';
print_r();
echo '</pre>';

echo '<hr>';
echo '<br>';