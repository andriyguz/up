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
    // $delete = "DELETE FROM `dbp` WHERE indexcity = $col1";
    // $res_delete = mysqli_query($dbp, $delete) or die ( mysqli_error($dbp));
}

function showupdate(){
    // $update = "UPDATE `dbp` SET `indexcity` = '$col1', `city` = '$col2', `address` = '$col3' WHERE indexcity = '$n'";
    // $res_update = mysqli_query($dbp, $update) or die ( mysqli_error($dbp));
    // if($res_update){
    //     header("Location: indexprogect1.php");
    // }else{
    //     header("Location: /components/updateindex.php");
    // }
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

// function showinsert($indexcity, $city, $address){
//     $insert = "INSERT INTO `dbp` (`indexcity`, `city`, `address`) VALUES
//     ('$indexcity', '$city', '$address')";
//     $res_insert = mysqli_query($dbp, $insert);
// }

?>