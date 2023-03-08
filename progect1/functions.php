<?php

    require_once 'conn.php';

    function showtable($result){
        for($data=[];$row=mysqli_fetch_assoc($result);$data[]=$row);
        $result='';
        foreach($data as $elem) {
            $result.='<tr>';
            $result.='<td>'.$elem['indexcity'].'</td>';
            $result.='<td>'.$elem['city'].'</td>';
            $result.='<td>'.$elem['address'].'</td>';
            $result.='<td>'.'<a href="/progect1/components/updateindex.php?id='.$elem['indexcity'].'">&#9998;</a>
            '.'</td>';
            $result.='<td>'.'<a href="/progect1/components/deleteindex.php?id='.$elem['indexcity'].'">&#10006;</a>
            '.'</td>';
            $result.='</tr>';
        }
        echo $result;
    }

    function showdelete(){
        $col1 = $_POST['col1'];
        $col2 = $_POST['col2'];
        $col3 = $_POST['col3'];
        $delete = "DELETE FROM `dbp` WHERE indexcity = $col1";
        $res_delete = mysqli_query($GLOBALS['dbp'], $delete) or die ( mysqli_error($dbp));
        if($res_delete){
            header("Location: ../indexprogect1.php");
        }else{
            header("Location: /components/updateindex.php");
        }
        return $res_delete;
    }

    function showupdate(){
        $col1 = $_POST['col1'];
        $col2 = $_POST['col2'];
        $col3 = $_POST['col3'];
        $col4 = $_POST['col4'];
        $update = "UPDATE `dbp` SET `indexcity` = '$col1', `city` = '$col2', `address` = '$col3' WHERE indexcity = '$col4'";
        $res_update = mysqli_query($GLOBALS['dbp'], $update) or die ( mysqli_error($dbp));
        if($res_update){
            header("Location: ../indexprogect1.php");
        }else{
            header("Location: /components/updateindex.php");
        }
        return $res_update;
    }

    function showtable1($result){
        while($elem = $result->fetch_assoc()) {
            $arrayreturn = [
                'indexcity' => $elem['indexcity'],
                'city' => $elem['city'],
                'address' => $elem['address']];
        }
        return $arrayreturn;
    }

    function getdatafrom(){
        $link = $_GET['id'];
        $link1 = "SELECT * FROM `dbp` WHERE indexcity = '$link'";
        $result = mysqli_query($GLOBALS['dbp'], $link1);
        return $result;
    }

    function showinsert(){
        $col1 = $_POST['col1'];
        $col2 = $_POST['col2'];
        $col3 = $_POST['col3'];
        $insert = "INSERT INTO `dbp` (`indexcity`, `city`, `address`) VALUES
        ('$col1', '$col2', '$col3')";
        $res_insert = mysqli_query($GLOBALS['dbp'], $insert);
        if($res_insert){
            header("Location: ../indexprogect1.php");
        }else{
            header("Location: insertindex.php");
        }
        return $res_insert;
    }

?>