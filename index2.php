<?php

    $text = "This is \"sting\" \$var";
    echo $text;

    echo '<br>';

    //HEREDOC
    //NOWDOC

    $text2 = <<<HERE
    This is "sting" \$var
    HERE;

    echo $text2;

    echo <<<END
     a
       b
         c
           d
           \n
           e
           f
           g
    END;
    echo <<<END
        a
      b
    c
    END;

    echo '<h2>арифметичні операції</h2>';
    /*
    +
    -
    *
    /
    -$a   -  зміна знаку
    $a % $b    -  ділення по модулю
    $a ** $b    -приведення до степеню
    =     -  присвоювання
    &       - присвоювання по посиланні
    ++$a    - префікс інкрімент
    $a++    - постфікс інкрімент
    --$a    - префікс деінкримент
    $a--    - постфікс деінкримент
    .       - конкатація (склеювання)
    */

    $a = 5;
    $b = 8;
    echo '<hr>';
    echo $a + $b;
    echo '<br>';
    echo $a - $b;
    echo '<br>';
    echo $a * $b;
    echo '<br>';
    echo $b / $a;
    echo '<br>';
    echo -$a;
    echo '<hr>';

    $a = 5.5;
    $b = 8;
    echo '<hr>';
    echo $a + $b;
    echo '<br>';
    echo $a - $b;
    echo '<br>';
    echo $a * $b;
    echo '<br>';
    echo $b / $a;
    echo '<br>';
    echo -$a;
    echo '<hr>';

    $a = 5;
    $b = 'string';
    echo '<hr>';
    echo $a + $b;
    echo '<br>';
    echo $a - $b;
    echo '<br>';
    echo $a * $b;
    echo '<br>';
    echo $b / $a;
    echo '<br>';
    echo -$a;
    echo '<hr>';

    define("element1",143);
    define("element2",125);

    echo element1;
    echo '<br>';
    echo element2;
    echo '<br>';

    echo '<hr>';

    $inkriment1 = 159;
    echo '$inkriment1=' .$inkriment1;
    echo '<br>';
    $inkriment2 = ++$inkriment1;
    echo '$inkriment2=' .$inkriment2;
    echo '<br>';
    echo '$inkriment1=' .$inkriment1;
    echo '<br>';

    $inkriment3 = $inkriment1++;
    echo '$inkriment3=' .$inkriment3;
    echo '<br>';
    echo '$inkriment1=' .$inkriment1;
    echo '<br>';

    echo '<hr>';

    $inkriment1 = 159;
    echo '$inkriment1=' .$inkriment1;
    echo '<br>';
    $inkriment2 = --$inkriment1;
    echo '$inkriment2=' .$inkriment2;
    echo '<br>';
    echo '$inkriment1=' .$inkriment1;
    echo '<br>';

    $inkriment3 = $inkriment1--;
    echo '$inkriment3=' .$inkriment3;
    echo '<br>';
    echo '$inkriment1=' .$inkriment1;
    echo '<br>';
    
    echo '<hr>';


    $string1 = 'string1';
    $string2 = 'string2';

    echo $string1.$string2;
    echo '<br>';
    echo $string1.'new value';

    echo '<hr>';

    $a = 125;
    echo $a;
    echo '<br>';
    $a = $a +29;
    echo $a;
    echo '<br>';

    $a +=20;
    echo $a;
    echo '<br>';

    $a *=1.5;
    echo $a;

    echo '<hr>';

    //NULL
    var_dump($var);
    $var = '';
    var_dump($var);
    $var = NULL;
    var_dump($var);
    $var = 176;
    var_dump($var);
    unset($var);
    var_dump($var);
    $var++;
    var_dump($var);

    echo '<hr>';

    /* основні операції
    >
    <
    >=
    =<
    ==
    !=
    !

    if(true){

    }else{

    }

    */

    echo '$a='.$a;
    echo '<br>';
    echo '$var='.$var;
    echo '<br>';
    if ($var > $a){
        echo '$var > $a';
    }else{
        echo '$var < $a';
    }

    echo '<hr>';
    echo '<br>';
    $var = 125.5;
    $a = 5;
    if ($var > $a){
        echo '$var > $a';
    }else{
        echo '$var < $a';
    }

    echo '<hr>';
    echo '<br>';


    $var = 125.5;
    $a = 129;
    if ($var > $a){
        echo '$var > $a';
    }else{
        echo '$var < $a';
    }

    echo '<hr>';
    echo '<br>';

    $var = 125.5;
    $a = '129';
    if ($var > $a){
        echo '$var > $a';
    }else{
        echo '$var < $a';
    }

    echo '<hr>';
    echo '<br>';

    $var2 = 'var';
    $a2 = 129;
    if ($var2 > $a2){
        echo '$var > $a';
    }else{
        echo '$var < $a';
    }
    
    echo '<hr>';
    echo '<br>';

    if ($var2 > $a2):
        echo '$var > $a';
    else:
        echo '$var < $a';
    endif;

    echo '<hr>';
    echo '<br>';

    $var1 = 10;
    $var2 = 8;
    $var3 = 7;

    if ($var3 > $var1){
        echo '$var2 > $var1';
    }elseif ($var3 > $var1){
        echo '$var2 > $var1';
    }elseif ($var3 > $var2){
        echo '$var3 > $var2';
    }else{
        echo '$var1 > $var2 > $var3';
    }

    echo '<hr>';
    echo '<br>';

    $var_new = $var3>$var2?$var3:$var2;
    echo $var_new;
    

