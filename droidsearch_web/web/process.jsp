<?php
$filename = $_FILES["file"]["name"];
move_uploaded_file($_FILES["file"]["tmp_name"], "temp/".$filename);

?>
<html>
    <head></head>
    <body>
        Success! <a href="/source">See result</a>
    </body>
</html>
