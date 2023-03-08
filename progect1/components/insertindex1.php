<?php
    session_start();
    require_once '../conn.php';
?>

<?php
    $col1 = $_POST['col1'];
    $col2 = $_POST['col2'];
    $col3 = $_POST['col3'];
    $insert = "INSERT INTO `dbp` (`indexcity`, `city`, `address`) VALUES
    ('$col1', '$col2', '$col3')";
    $res_insert = mysqli_query($dbp, $insert);
    if($res_insert){
        header("Location: ../indexprogect1.php");
    }else{
        header("Location: insertindex.php");
    }
?>