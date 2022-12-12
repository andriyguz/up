<?php
require_once('inc/inc.php');

//header ('Location: blog.php');
/*header ('refresh: 5; url = blog.php');
exit;
die;*/
//header("Content-Type: text/html; charset=UTF-8"); //основний
//header("Content-Type: text/plain; charset=UTF-8");

/*header ('Content-Disposition: attachment; filename="text.txt"');
readfile('text.txt');
die;*/

/*header('Content-Type: application/pdf');
header('Content-Disposition: attachment; filename="skoda.pdf"');
readfile("skoda.pdf");*/

header('Content-Type: application/pdf');
header('Content-Disposition: inline; filename="skoda.pdf"');
readfile("skoda.pdf");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php echo $test; ?>
    <?=$test?>
</body>
</html>

