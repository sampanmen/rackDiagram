<?php

define("HOST", "localhost");
define("DBUSER", "root");
define("DBPASS", "123456");

//$con = new PDO('mysql:host=localhost;dbname=webapp', DBUSER, DBPASS);

function connection($dbname = "face_layout") {
    $con = new PDO('mysql:host=localhost;dbname=' . $dbname, DBUSER, DBPASS);
    $con->exec("SET CHARACTER SET utf8");
    return $con;
}
