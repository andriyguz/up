<?php
    session_start();
    require_once '../classes/Conndb.php';
    require_once '../classes/Userinfo.php';
?>

<?php
    $result = new Userinfo;
    if(!empty($_GET)){
        $elem = $result->getShowTab1();
    }

    if(!empty($_POST)){
        $result->getUserUpdate();
    }
?>

<form action="updateindex.php" method="POST">
    <div>
        <label>indexcity<br />
            <input type="text" name="indexcityupdate" value="<?= $elem['indexcity']; ?>"/>
        </label>
    </div>
    <div>
        <label>city<br />
            <input type="text" name="city" value="<?= $elem['city']; ?>"/>
        </label>
    </div>
    <div>
        <label>address<br />
            <input type="text" name="address" value="<?= $elem['address']; ?>"/>
        </label>
    </div>
    <div>
        <input type="hidden" name="indexseach" value="<?= $elem['indexcity']; ?>"/>
    </div>
    <div>
        <button type="submit">Редагувати</button>
    </div>
</form>