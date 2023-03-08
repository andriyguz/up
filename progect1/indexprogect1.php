<?php session_start(); ?>
<?php require_once 'components/header.php'; ?>
<?php require_once 'conn.php'; ?>
<?php require_once 'functions.php'; ?>

<div class="allcontent_in">

    <?php
        $sql = "SELECT * FROM `dbp`";
        $result = mysqli_query($dbp, $sql);
    ?>

    <?php
        $seach = $_POST['seach'];
        $sqlseach = "SELECT * FROM `dbp` WHERE indexcity LIKE '%$seach%' OR city LIKE '%$seach%' OR address LIKE '%$seach%'";
        $result = mysqli_query($dbp, $sqlseach);
    ?>

    <?php

    ?>

    <table>
        <tr>
            <th>indexcity</th>
            <th>city</th>
            <th>address</th>
            <th>&#9998;</th>
            <th>&#10006;</th>
        </tr>

        <?php
            showtable($result);     
        ?>

    </table>

</div>
     
<?php require_once 'components/footer.php'; ?>