<?php
    session_start();
    require_once '../classes/Conndb.php';
?>

<?php
    $dbp = new Conndb;
    if(!empty($_POST['indexcityinsert'])){
        $dbp->getUserInsert();
    }
?>

<div>
    <form action="insertindex.php" method="POST">
        <div>
            <label>indexcity<br />
                <input type="text" name="indexcityinsert"/>
            </label>
        </div>
        <div>
            <label>city<br />
                <input type="text" name="city"/>
            </label>
        </div>
        <div>
            <label>address<br />
                <input type="text" name="address"/>
            </label>
        </div>
        <div>
            <button type="submit">Створити</button>
        </div>
    </form>
</div>