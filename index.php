<?php
require_once 'config.php';
require_once 'function.inc.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <style>
            table, th, td {
                border: 1px solid black;
            }
        </style>
    </head>
    <body>
        <?php
        $get_rack_id = isset($_REQUEST['rack_id']) ? $_REQUEST['rack_id'] : 1;
        $getAllItem = get_item_by_rack_id($get_rack_id);
//        echo "<pre>";
//        print_r($getAllItem);
//        echo "</pre>";
        $color = array("free" => "azure", "server" => "aqua", "switch" => "cornflowerblue", "network" => "cadetblue", "other" => "cadetblue");

        echo "<table width='600'>";
        $u = 1;
        foreach ($getAllItem as $key => $value) {
            $itemType = $value['item_type'];
            $itemTypeColor = $itemType == "server" ? "server" : "other";
            $itmeName = $value['item_name'];
            //if ($value->RackNo == 2) {
            $chkStart = $value['item_position'] - $u;
            //echo $chkStart . '<br/>';
            if ($chkStart != 0) {
                for ($i = 0; $i < $chkStart; $i = $i + 1) {
                    echo "<tr style='background-color: " . $color['free'] . "'>"
                    . "<td>$u</td>"
                    . "<td>-</td>"
                    . "</tr>";
                    $u = $u + 1;
                }
            }

            $itemSize = $value['item_unit_size'];
            if ($itemSize == 1) {

                echo "<tr style='background-color: " . $color["$itemTypeColor"] . "'>"
                . "<td>$u</td>"
                . "<td>$itmeName - $itemType</td>"
                . "</tr>";
                $u = $u + 1;
            } else {
                echo "<tr style='background-color: " . $color["$itemTypeColor"] . "'>"
                . "<td>$u</td>"
                . "<td rowspan='$itemSize'>$itmeName - $itemType</td>"
                . "</tr>";
                $u = $u + 1;
                for ($ii = 1; $ii < $itemSize; $ii++) {
                    echo "<tr style='background-color: " . $color["$itemTypeColor"] . "'>"
                    . "<td>$u</td>"
                    . "</tr>";
                    $u = $u + 1;
                }
            }
            //}
        }
        for ($ii = $u; $ii <= 42; $ii++) {
            echo "<tr style='background-color: " . $color['free'] . "'>"
            . "<td>$u</td>"
            . "<td>-</td>"
            . "</tr>";
            $u = $u + 1;
        }
        echo "</table>";
//        echo "<pre>";
//        print_r($xml);
//        echo "</pre>";
        ?>
    </body>
</html>
