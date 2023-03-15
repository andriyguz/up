<?php
    session_start();
    require_once 'components/header.php';
    require_once 'classes/Conndb.php';
?>

<div class="allcontent_in">

    <?php
        $dbp = new Conndb;
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
            if($_POST['seach']){
                print_r($dbp->getShowSeach($result));
            }else{
                print_r($dbp->getShowTable($result));
            }   
        ?>

    </table>

</div>

<?php require_once 'components/footer.php'; ?>