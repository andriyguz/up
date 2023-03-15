<?php

    class Userinfo extends Conndb{

        public function __construct(){
            parent::__construct();
            if($_GET['id']){
                $link = $_GET['id'];
                $link1 = "SELECT * FROM `dbp` WHERE indexcity = '$link'";
                $this->result = mysqli_query($this->dbp, $link1);
            }  
        }

        public function __destruct(){}

        public function getShowTab1(){
            while($elem = $this->result->fetch_assoc()) {
                $arrayreturn = [
                    'indexcity' => $elem['indexcity'],
                    'city' => $elem['city'],
                    'address' => $elem['address']];
            }
            return $arrayreturn;
        }
    }

?>