<?php

//домашні роботи
echo 'ДОМАШНІ РОБОТИ';

echo '<hr>';
echo '<br>';

for($i = 20; $i <= 45; $i++){
    if (fmod($i, 5) == 0){
        $n += $i;
    }
}
echo $n;

echo '<hr>';
echo '<br>';

$var = 1;
$var += 12;
$var -= 14;
$var *= 5;
$var /= 7;
$var++;
$var--;
echo $var;

echo '<hr>';
echo '<br>';

$arr = array('a', 'b', 'c', 'd', 'e');
echo "<pre>";
print_r($arr);
echo "</pre>";

echo '<br>';

$arr1 = array('a', 'b', 'c', 'd', 'e');
$var = 'b';
if($arr1[1] = $var){
    $arr1 = array('a', 'c', 'b', 'd', 'e');
    echo "<pre>";
    print_r($arr1);
    echo "</pre>";
}

echo '<hr>';
echo '<br>';

$var = [
    [
        'title1' => 'Привіт, ',
        'title2' => 'світ ',
        'title3' => '!',
    ],
];
echo $var[0]['title1'];
echo $var[0]['title2'];
echo $var[0]['title3'];

echo '<hr>';
echo '<br>';

//вносимо будь-яке число
$c = 442158755745;
//вносимо задану цифру
$k = 5;
//переводимо строку в масив
$arr3 = str_split($c);
echo "<pre>";
print_r($arr3);
echo "</pre>";
//рахуємо кількість всіх значень масива
array_count_values($arr3);
//print_r(array_count_values($arr3));
//шукаємо кількість заданої цифри у внесеному числі
$m = array_count_values($arr3)[$k];
echo $m;

echo '<hr>';
echo '<br>';

echo $num = 1000;
$sum = 0;
echo '<br>';
while($num >= 50){
    $num = $num / 2;
    echo 'num='.$num.'<br>';
    if($num >=50){
        $sum++;
        echo 'sum='.$sum.'<br>';
    }
    
}
echo $sum;

echo '<hr>';
echo '<br>';

//вводимо число
$b = 30;
//змінна для запамятовування дільника, число початку ділення
$b1 = 1;
echo $b1.'<br>';
while(2 * $b1 <$b){
    $b1++;
    if($b % $b1 == 0){
        echo $b1.'<br>';
    }
}
echo $b;

echo '<hr>';
echo '<br>';

$w = 512;
$arr4 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];



echo '<hr>';
echo '<br>';




echo '<hr>';
echo '<br>';