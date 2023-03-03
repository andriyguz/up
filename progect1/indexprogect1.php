<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        $dbp = @mysqli_connect('127.0.0.1', 'root', '', 'progect1', 3306 ) or die ('error connection');
        if(!$dbp) die(mysqli_connect_error());
        mysqli_set_charset($dbp, "utf8") or die('no connection dbp');
        $sql = "SELECT * FROM `dbp`";
        $result = mysqli_query($dbp, $sql);
        echo '<pre>';
        print_r($result);
        echo '</pre>';

        //$date = mysqli_fetch_all($result);
        //$date = mysqli_fetch_all($result, MYSQLI_ASSOC);
        //$date = mysqli_fetch_all($result, MYSQLI_NUM);
        //$date = mysqli_fetch_all($result, MYSQLI_BOTH);
        //echo '<pre>';
        //print_r($date);
        //echo '</pre>';

        // if ($result->num_rows > 0) {
        //     while($row = $result->fetch_assoc()) {
        //         echo "<br> indexcity: ". $row["indexcity"]. " - city: ". $row["city"]. " - address: ". $row["address"].  "<br>";
        //     }
        // } else {
        //     echo "0 results";
        // }
    ?>
</body>
</html>