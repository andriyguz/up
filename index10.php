<?php
//стрілкова функція
$y = 100;

$varfn = fn($i) => $i + $y;

var_dump($varfn(3));
echo '<pre>';
print_r($varfn(3));
echo '</pre>';
echo $varfn(3);

echo '<hr>';
echo '<br>';

//анонімна функція

$my_array_keys = function($arr){
    $date = [];
    foreach ($arr as $k => $v){
        $date[] = $k;
    }
    return $date;
};

/*function my_array_keys($arr){
    $date = [];
    foreach ($arr as $k => $v){
        $date[] = $k;
    }

    return $date;
}*/

$um = [1,2,3];
$name = ['Nazar', 'Taras', 'Max', 'Andriy', 'Olga'];
$name2 = [ 'name' => ' Andriy', 'year' => 22];
$test = [];

$key2 = $my_array_keys($name);
echo '<pre>';
print_r($key2);
echo '</pre>';

echo '<hr>';
echo '<br>';




echo '<hr>';
echo '<br>';