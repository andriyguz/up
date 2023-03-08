<?php
    session_start();
    require_once '../conn.php';
?>

<?php
    $col1 = $_POST['col1'];
    $col2 = $_POST['col2'];
    $col3 = $_POST['col3'];
    $col4 = $_POST['col4'];
    $update = "UPDATE `dbp` SET `indexcity` = '$col1', `city` = '$col2', `address` = '$col3' WHERE indexcity = '$col4'";
    $res_update = mysqli_query($dbp, $update) or die ( mysqli_error($dbp));
    if($res_update){
        header("Location: ../indexprogect1.php");
    }else{
        header("Location: /components/updateindex.php");
    }
?>