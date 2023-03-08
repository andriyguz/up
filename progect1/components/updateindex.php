<?php require_once '../functions.php'; ?>

<?php
    session_start();
?>

<?php
    $result = getdatafrom();
    $returnresult = showtable1($result);
?>

<form action="" method="POST">
    <div>
        <label>indexcity<br />
            <input type="text" name="col1" value="<?= $returnresult['indexcity']; ?>"/>
        </label>
    </div>
    <div>
        <label>city<br />
            <input type="text" name="col2" value="<?= $returnresult['city']; ?>"/>
        </label>
    </div>
    <div>
        <label>address<br />
            <input type="text" name="col3" value="<?= $returnresult['address']; ?>"/>
        </label>
    </div>
    <div>
        <input type="hidden" name="col4" value="<?= $returnresult['indexcity']; ?>"/>
    </div>
    <div>
        <button type="submit">Редагувати</button>
    </div>
</form>

<?php
    if(!empty($_POST['col1'])){
        showupdate();
    }
?>
