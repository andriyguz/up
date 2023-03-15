<?php

    class NotebookAbs extends ProductAbs{
        public $cpu;

        public function __construct($name, $price, $cpu){
            parent::__construct($name, $price);
            $this->cpu = $cpu;
        }

        public function getProduct(){
            $out = parent::getProduct();
            $out .= "Процесор:{$this->cpu}<br>
            ";
            return $out;
        }

        public function getCpu(){
            return $this->cpu;
        }

        public function addProduct($name, $price, $cpu = ''){
            var_dump($name);
            var_dump($price);
            var_dump($cpu);
        }
    }

?>