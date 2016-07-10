<?php

require_once 'config.php';
require_once 'function.inc.php';

$file = fopen("rack.csv", "r");
while (($buffer = fgets($file, 1024)) !== false) {
    //echo $buffer . "<br/>";
    $arr = split(',', $buffer);

    $itemid = add_item($arr[5], $arr[4], $arr[6], $arr[7], $arr[8], $arr[3], NULL);
    if ($itemid) {
        $detailid = add_item_detail($arr[1], $itemid, $arr[2]);

        echo "id: $detailid is done.<br/>";
    } else {
        echo "error";
        exit();
    }
}