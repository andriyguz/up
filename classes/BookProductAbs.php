<?php

    class BookProductAbs extends ProductAbs implements I3D{
        public $numPage;

        // const TEST = 15;

        public function __construct($name, $price, $numPage){
            parent::__construct($name, $price);
            $this->numPage = $numPage;
            // self::TEST = 15;
            $this->setDiscount(10);
        }

        public function test(){
            var_dump(self::TEST2);
        }

        public function getProduct(){
            $out = parent::getProduct();
            $out .= "Кількість сторінок:{$this->numPage}<br>";
            $out .= "Розмір знижки:{$this->getDiscount()}<br>";
            return $out;
        }

        public function getNumPage(){
            return $this->numPage;
        }

        public function addProduct($name, $price, $numPage = ''){
            var_dump($name);
            var_dump($price);
            var_dump($numPage);
        }
    }

?>