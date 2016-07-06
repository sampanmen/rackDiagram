<?php

//function login($user, $pass) {
//    $con = connection();
//    $sqlCommand = "SELECT `id`, `name`, `surname`, `username` FROM `members` WHERE `username` = :user AND `passwd`=:pass ";
//    $sth = $con->prepare($sqlCommand);
//    $sth->execute(
//            array(
//                ":user" => $user,
//                ":pass" => $pass
//            )
//    );
//    $rowCount = $sth->rowCount();
//    return $rowCount > 0;
//}

function get_idc_all() {
    $con = connection();
    $sqlCommand = "SELECT * FROM `idc`";
    $sth = $con->prepare($sqlCommand);
    $sth->execute();
    $result = $sth->fetchAll(PDO::FETCH_ASSOC);
    return $result;
}

function add_rack($idc_id, $amount, $name, $label, $amountUnit) {
    $con = connection();
    $sqlCommand = "INSERT INTO `rack`(`idc_id`, `rack_label`, `rack_name`, `rack_unit_amount`) VALUES (:idc_id,:rack_label,:rack_name,:rack_unit_amount)";
    $sth = $con->prepare($sqlCommand);
    for ($i = 1; $i <= $amount; $i++) {
        $sth->execute(
                array(
                    ":idc_id" => $idc_id,
                    ":rack_label" => $i,
                    ":rack_name" => $name,
                    ":rack_unit_amount" => $amountUnit
                )
        );
    }
    return true;
}
