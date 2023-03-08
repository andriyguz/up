<?php
    session_start();
    require_once '../conn.php';
?>

<?php
    $col1 = $_POST['col1'];
    $col2 = $_POST['col2'];
    $col3 = $_POST['col3'];
    $delete = "DELETE FROM `dbp` WHERE indexcity = $col1";
    $res_delete = mysqli_query($dbp, $delete) or die ( mysqli_error($dbp));
    if($res_delete){
        header("Location: ../indexprogect1.php");
    }else{
        header("Location: /components/updateindex.php");
    }
?>
