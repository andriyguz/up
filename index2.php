<?php

    require_once 'classes/File.php';

    //C:\OpenServer\domains\up\file.txt
    //__DIR__ . '/file.txt'                 тотожні вирази

    $file = new File(__DIR__ . '/file.txt');

    $file->write('text1');
    $file->write('text1');
    $file->write('text1');
    $file->write('text1');
    $file->write('text1');

?>