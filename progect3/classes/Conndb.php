<?php

    class Conndb{
        public $dbp;
        public $result;
        public $arrayreturn;

        public function __construct(){
            session_start();
            $this->dbp = @mysqli_connect('127.0.0.1', 'root', '', 'progect1', 3306 ) or die ('error connection');
            if(!$this->dbp){
                die(mysqli_connect_error());
            }
        }

        public function __destruct(){}

        public function getShowTable($result){
            $this->result = $result;
            $sql = "SELECT * FROM `dbp`";
            $this->result = mysqli_query($this->dbp, $sql);
            for($data=[];$row=mysqli_fetch_assoc($this->result);$data[]=$row);
            $this->result='';
            foreach($data as $elem) {
                $this->result.='<tr>';
                $this->result.='<td>'.$elem['indexcity'].'</td>';
                $this->result.='<td>'.$elem['city'].'</td>';
                $this->result.='<td>'.$elem['address'].'</td>';
                $this->result.='<td>'.'<a href="/progect3/components/updateindex.php?id='.$elem['indexcity'].'">&#9998;</a>
                '.'</td>';
                $this->result.='<td>'.'<a href="/progect3/components/deleteindex.php?id='.$elem['indexcity'].'">&#10006;</a>
                '.'</td>';
                $this->result.='</tr>';
            }
            return $this->result;
        }

        public function getShowSeach($result){
            $this->result = $result;
            $seach = $_POST['seach'];
            $sql = "SELECT * FROM `dbp` WHERE indexcity LIKE '%$seach%' OR city LIKE '%$seach%' OR address LIKE '%$seach%'";
            $this->result = mysqli_query($this->dbp, $sql);
            for($data=[];$row=mysqli_fetch_assoc($this->result);$data[]=$row);
            $this->result='';
            foreach($data as $elem) {
                $this->result.='<tr>';
                $this->result.='<td>'.$elem['indexcity'].'</td>';
                $this->result.='<td>'.$elem['city'].'</td>';
                $this->result.='<td>'.$elem['address'].'</td>';
                $this->result.='<td>'.'<a href="/components/updateindex.php?id='.$elem['indexcity'].'">&#9998;</a>
                '.'</td>';
                $this->result.='<td>'.'<a href="/components/deleteindex.php?id='.$elem['indexcity'].'">&#10006;</a>
                '.'</td>';
                $this->result.='</tr>';
            }
            return $this->result;
        }

        public function getUserInsert(){
            $indexcity = $_POST['indexcityinsert'];
            $city = $_POST['city'];
            $address = $_POST['address'];
            $insert = "INSERT INTO `dbp` (`indexcity`, `city`, `address`) VALUES
            ('$indexcity', '$city', '$address')";
            mysqli_query($this->dbp, $insert);
            header('Location:http://up/progect3/indexprogect3.php');
        }

        public function getUserUpdate(){
            $indexcity = $_POST['indexcityupdate'];
            $city = $_POST['city'];
            $address = $_POST['address'];
            $indexcity1 = $_POST['indexseach'];
            $update = "UPDATE `dbp` SET `indexcity` = '$indexcity', `city` = '$city', `address` = '$address' WHERE indexcity = '$indexcity1'";
            mysqli_query($this->dbp, $update);
            header('Location:http://up/progect3/indexprogect3.php');
        }

        public function getUserDelete(){
            $indexcity = $_POST['indexcitydelete'];
            $delete = "DELETE FROM `dbp` WHERE indexcity = $indexcity";
            mysqli_query($this->dbp, $delete);
            header('Location:http://up/progect3/indexprogect3.php');
        }
    }

?>