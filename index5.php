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


echo '<hr>';
echo '<br>';

for($i = 0; $i < count($arr); $i++){
    echo "element - {$i} value - {$arr[$i]} <br>";
}

echo '<hr>';
echo '<br>';

for($i = 0; $i < count($goods); $i++){
    //echo $goods[$i];
    echo '<pre>';
    print_r($goods[$i]);
    echo '</pre>';

    //for($j = 0; $j < count($goods[$i]); $j++){
    //    echo 'element - .$i. value - '  $goods[$i][$j];
    //}

    //foreach($goods[$i] as $value){
    //    echo $value.'<br>';
    //}

    foreach($goods[$i] as $key => $value){
        echo 'key -'.$key.'value -'.$value.'<br>';
    }

    foreach($goods[$i] as $key => $value){
        echo 'key -'.$key.'value -'.$goods[$i][$key].'<br>';
    }
}

echo '<hr>';
echo '<br>';

foreach($goods as $good){
    foreach($good as $key => $value){
        echo 'key -'.$key.'value -'.$value.'<br>';
    }
}

echo '<hr>';
echo '<br>';







echo '<hr>';
echo '<br>';