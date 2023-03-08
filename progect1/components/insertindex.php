<?php require_once '../functions.php'; ?>

<?php 
    session_start(); 
?>

<div>
    <form action="" method="POST">
        <div>
            <label>indexcity<br />
                <input type="text" name="col1"/>
            </label>
        </div>
        <div>
            <label>city<br />
                <input type="text" name="col2"/>
            </label>
        </div>
        <div>
            <label>address<br />
                <input type="text" name="col3"/>
            </label>
        </div>
        <div>
            <button type="submit">Створити</button>
        </div>
    </form>
</div>

<?php
    if(!empty($_POST['col1'])){
        showinsert();
    }
?>