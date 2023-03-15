<?php

    error_reporting(-1);
    require_once 'classes/ProductAbs.php';
    require_once 'classes/I3D.php';
    require_once 'classes/BookProductAbs.php';
    require_once 'classes/NotebookAbs.php';

    function debug($date){
        echo '<pre>'.print_r($date,1).'</pre>';
        echo '<pre>'.var_dump($date).'</pre>';
    }

    $book = new BookProductAbs('Eliktronik', 20, 1539);
    $notebook = new NotebookAbs('Dell', 1000, 'AMD');

    debug($book);
    debug($notebook);

    echo $book->getProduct();
    echo $notebook->getProduct();

    $book->addProduct('Test', 10, 5);

    $book->test();

?>