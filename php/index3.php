<?php

echo '<hr>';
echo '<br>';

$i = 0;
while($i <= 10){
    echo $i.'<br>';
    $i++;
}

echo '<hr>';
echo '<br>';

$i = 1;
echo '<table border="1">';
while($i<=15){
    echo "\t<tr>\n";
    $n = 1;
    while($n<=5){
        echo "\t\t<td> Row - {$i} | Col - {$n} </td>";
        $n++;
    }
    echo "\t<tr>\n";
    $i++;
}
echo '</table>';

echo '<hr>';
echo '<br>';

$year = 1900;
echo '<select>'."\n";
while($year<=2022){
    echo "\t<option value={$year}>".$year."</option>";
    $year++;
}
echo '</select>';

echo '<hr>';
echo '<br>';

$i = 1;
while($i<=10){
    echo $i++;
    //echo ++$i;
}

echo '<hr>';
echo '<br>';

$i = 1997;
do{
    echo 'do-while year - '.$i++;
}while($i <= 1996);

echo '<hr>';
echo '<br>';

$i = 1997;
while($i <= 1996){
    echo 'while year - '.$i++;
}

echo '<hr>';
echo '<br>';

$arr1 = [];
$arr2 = array();

$arr1 = [1, '2', 3, 5];
$arr2 = array(6, 7, '8', 9);
echo "<pre>";
var_dump($arr1);
echo "</pre>";
echo "<pre>";
print_r($arr2);
echo "</pre>";

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
echo "<pre>";
var_dump($goods);
echo "</pre>";

echo "<pre>";
print_r($goods);
echo "</pre>";

echo $goods[1]['title'];
echo $goods[1]['price'];
echo $goods[1]['state'];

echo '<hr>';
echo '<br>';

//$i = 1;
//echo '<table border="1">';
//while($i<=15){
//    echo "\t<tr>\n";
//    $n = 1;
//    while($n<=5){
//        echo "\t\t<td> Row - {$i} | Col - {$n} </td>";
//        $n++;
//    }
//    echo "\t<tr>\n";
//    $i++;
//}
//echo '</table>';

$array_table = [];

$i = 1;
while($i<=15){
    $n = 1;
    while($n<=5){
        $array_table[$i][$n] = 'Row - '.$i.' | Col - '.$n;
        $n++;
    }
    $i++;
}
echo "<pre>";
print_r($array_table);
echo "</pre>";

echo $array_table[2][3];


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

$arr2 = array(1, 2, 3, 4, 5, 6, 7);
$arr2 = array(1,
            array(
                1, 
                2, 
                3, 
                4),
            3, 
            4, 
            5, 
            6, 
            7);
$arr2[0];
$arr2(0);
$array3 = [
    'title' => 'iphone 12 pro max',
    'price' => 800,
    'state' => 'new',
];
echo $array3['title'];
echo '<br>';
echo '<br>';
echo '$array3 - '.$array3['0'];
echo '<br>';
echo '<br>';
echo '$array3 - '.$array3[0];
print_r($array3);
echo '<br>';
echo '<br>';
var_dump($array3);



echo '<hr>';
echo '<br>';