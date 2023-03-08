<?php require_once 'components/header.php'; ?>

<div class="allcontent_st">
    <?php
        session_start();
        define('ADMIN', 'admin');
    ?>

    <?php if( $_SESSION['admin'] != ADMIN){ ?>
        <form action="" method="POST">
            <div>
                <input type="text" placeholder="Введіть логін" name="login">
            </div>
            <div>
                <button type="reset">Змінити</button>
                <button type="submit" name="send" value="send">Відправити</button>
            </div>
        </form>
    <?php } ?>

    <?php
        if(!empty($_POST['login'])){
            if($_POST['login']==ADMIN){
                $_SESSION['admin'] = ADMIN;
            }else{
                $_SESSION['admin'] != ADMIN;
            }
            header("Location: indexprogect1.php");
            die();
        }
    ?>

</div>

<?php require_once 'components/footer.php'; ?>
