<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
        $xml = simplexml_load_file("rack.xml") or die("Error: Cannot create object");
        //echo $xml->rack->ID;

        $color = array("free" => "azure", "server" => "aqua", "switch" => "cornflowerblue", "network" => "cadetblue", "kvm"=>"cadetblue");

        echo "<table width='600'>";
        $u = 1;
        foreach ($xml->rack as $key => $value) {
            if ($value->RackNo == 2) {
                $chkStart = $value->Start_UNo - $u;
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

                $itemSize = $value->End_UNo - $value->Start_UNo + 1;
                if ($itemSize == 1) {
                    echo "<tr style='background-color: " . $color["$value->Type"] . "'>"
                    . "<td>$u</td>"
                    . "<td>$value->Label - $value->Type</td>"
                    . "</tr>";
                    $u = $u + 1;
                } else {
                    echo "<tr style='background-color: " . $color["$value->Type"] . "'>"
                    . "<td>$u</td>"
                    . "<td rowspan='$itemSize'>$value->Label - $value->Type</td>"
                    . "</tr>";
                    $u = $u + 1;
                    for ($ii = 1; $ii < $itemSize; $ii++) {
                        echo "<tr style='background-color: " . $color["$value->Type"] . "'>"
                        . "<td>$u</td>"
                        . "</tr>";
                        $u = $u + 1;
                    }
                }
            }
        }
        echo "</table>";
//        echo "<pre>";
//        print_r($xml);
//        echo "</pre>";
        ?>
    </body>
</html>
