<?php

require_once 'functions.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<h4>Введіть номер телефону для пошуку</h4>
    
<form action="" method="POST">
    <div>
        <input type="tel"  name="seachphonenumber" placeholder="Номер телефону">
    </div>
    <div>
        <button type="submit">Надіслати</button>
    </div>
</form>

<?php
    
    $seach = $_POST['seachphonenumber'];
    $book = file('phonebook.txt');
    echo '<br>';
    print_r($book);
    echo '<br>';
    //$key = array_search($seach, $book);
    //echo $key;

    /*
    if (isset($_POST)){
        print("Имя: " . $_POST['name']);
        print("<br>Прізвище: " . $_POST['surname']);
        print("<br>Номер телефону: " . $_POST['phonenumber']);
        print("<br>Коментар: " . $_POST['comment']);
    }
    */

    $book1 = file_get_contents('phonebook.txt');
    echo '<br>';
    print_r($book1);
    echo '<br>';
    $pos = strpos($book1, $seach);
    if($pos === false){
        echo '<br>';
        echo 'Номер телефона відсутній';
        echo '<br>';
    }else{
        echo '<br>';
        echo 'Номер телефона є';
        echo '<br>';
        copy('phonebook.txt', 'oldphonebook.txt');
        echo 'Змініть дані';
        require_once 'index22_phone1.php';
        // $arrbook = fopen('phonebook.txt', "a+");
        // $arrbook1 = str_replace('phonenumber', 'seachphonenumber', $arrbook);
        // fwrite($arrbook, $arrbook1);
        // fclose($arrbook);
    }

    

    /*
    foreach($_REQUEST as $key => $value){
        echo $key;
        echo ": " .$value;
        echo "<br/>";
    }
    */

    /*
    $arrbook = [];
    $i = 0;
    foreach($book as $user){
        //echo $user.'<br>';
        $us = explode('|', $user);
        $arrbook[$i] = $us;
        $i++;
    }
    echo '<br>';
    print_r($arrbook);
    echo '<br>';
    */

    /*
    foreach($arrbook as $key1 => $user){
        foreach($user as $key2 => $us){
            if($seach == $us){
                echo $key1 . ' ' . $key2 . ' ' . $us . '<br>';
                echo $arrbook[$key1][$key2];
                require_once 'index22_phone1.php';
                $arrbook[$key1][$key2] = $_POST['phonenumbernew'];
                $arrbook = fopen('phonebook.txt', "a");
                fwrite($arrbook, $arrbook[$key1][$key2]);
                fclose($arrbook);
            }
        }
    }
    */
    
    
    /*
    foreach($arrbook as $user){
        foreach($user as $us){
            echo '<br>';
            print_r($us);
            echo '<br>';
            if($seach == $us){
                echo 'Номер телефона є';
            }else{
                echo 'Номер телефона відсутній';
            }
        }
    }
    */

    /*
    for($i = 0; $i < count($book); $i++){
        $arrUser[$i] = explode('|', $book[$i]);
        for($j = 0; $j < count($arrUser[$i]); $j++){
            echo '<br>';
            print_r($arrUser[$i][$j]);
            echo '<br>';
        }
    }
    
    
    $arrUser1 = array_values($arrUser);
    echo '<br>';
    print_r(array_values($arrUser1));
    echo '<br>';
    */

    /*
    $file = fopen('phonebook.txt', "r");
    $n = 1;
    while(! feof($file)) {
        $line = fgets($file);
        echo "[$n]",$line. '<br>';
        $n++;  
    }
    fclose($file);
    */
    
    /*
    $k = count($book);
    echo '<br>';
    echo $k;
    echo '<br>';
    */

    /*
    foreach($book as $user){
        //echo $user.'<br>';
        $us = explode('|', $user);
        echo '<br>';
        print_r($us);
        echo '<br>';
    }
    */
    
    /*
    $seach = $_POST['seachphonenumber'];
    $book = file_get_contents('phonebook.txt');
    echo $book;
    $pos = strpos($book, $seach);
    if($pos === false){
        echo '<br>';
        echo 'Номер телефона відсутній';
        echo '<br>';
    }else{
        echo '<br>';
        echo 'Номер телефона є';
        echo '<br>';
        copy('phonebook.txt', 'oldphonebook.txt');
        echo 'Змініть дані';
        require_once 'index22_phone1.php';
        $num = $_POST['phonenumbernew'];
        if(!empty($num)){
            $booknew = strtr($book, $seach, $num);
            exit;
        }
    }
    echo $booknew;
    */

?>



</body>
</html>