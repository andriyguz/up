<?php

    $dbp = @mysqli_connect('127.0.0.1', 'root', '', 'progect1', 3306 ) or die ('error connection');
    if(!$dbp) die(mysqli_connect_error());
    mysqli_set_charset($dbp, "utf8") or die('no connection dbp');

?>