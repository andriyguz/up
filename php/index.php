<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>PHP урок 1</h1>
    <?php
        // одностроковий елемент
        /*
        багатостроковий коментар
        echo '<h2>команда echo</h2>';
        багатостроковий коментар
        */
        echo '<h2>команда echo</h2>';
    ?>

    <?php
        echo '<h2>перемінні</h2>';

        $a;
        //echo $a.'<br/>';
        //print_r($a).'<br/>';
        var_dump($a).'<br/>';
        
        echo $a.'<br/>';
        $a = 159;
        echo $a.'<br/>';

        $a = 147.52;
        echo $a.'<br/>';

        $a = 'text value';
        echo $a.'<br/>';

        $a = "159";
        echo $a.'<br/>';

        $title = 'title_text';
        echo $title.'<br/>';

        $subtitle = "subtitle";
        echo $subtitle.'<br/>';

        $result_text = "result text {$title}";
        echo $result_text.'<br/>';


    ?>

    <h2>
        <?php echo 'константи';?>
        <?php //'константи';?>
    </h2>

    <?php
        $newValue = 1245;
        define("oldVelue", "1459");
        //echo $oldValue;
        echo oldVelue;

        echo '<br/>';
        echo '<br/>';

        //define("oldVelue", 787878);
        //echo oldVelue;

        const oldVelue2 = "125156565";
        echo oldVelue2;
    ?>

    <hr>
    <?php
        echo '<h2>типи даних</h2>';
        /*
        boolean true  false
        integer (int) цілі числа
        float дробові числа десяткові дроби
        string
        */
        $var = true;
        echo $var;
        echo '<br/>';
        var_dump($var);
        echo '<br/>';
        echo gettype($var);

        echo '<hr/>';
        echo '<br/>';

        $var1 = 78787;
        echo $var1;
        echo '<br/>';
        var_dump($var1);
        echo '<br/>';
        echo gettype($var1);

        echo '<hr/>';
        echo '<br/>';

        $var2 = 3.1415;
        echo $var2;
        echo '<br/>';
        var_dump($var2);
        echo '<br/>';
        echo gettype($var2);

        echo '<hr/>';
        echo '<br/>';

        echo (int) $var2;
        echo '<br/>';
        var_dump($var2);
        echo '<br/>';
        echo gettype($var2);

        echo '<hr/>';
        echo '<br/>';

        $var3 = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
        echo $var3;
        echo '<br/>';
        var_dump($var3);
        echo '<br/>';
        echo gettype($var3);

        echo '<br/>';
        echo '<br/>';
    ?>
</body>
</html>