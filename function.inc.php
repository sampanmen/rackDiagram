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
    $sqlCommand = "SELECT * FROM `view_get_allitem`";
    $sth = $con->prepare($sqlCommand);
    $sth->execute();
    $result = $sth->fetchAll(PDO::FETCH_ASSOC);
    return $result;
}

function get_item_all() {
    $con = connection();
    $sqlCommand = "SELECT * FROM `idc`";
    $sth = $con->prepare($sqlCommand);
    $sth->execute();
    $result = $sth->fetchAll(PDO::FETCH_ASSOC);
    return $result;
}

function get_item_by_rack_id($rackid) {
    $con = connection();
    $sqlCommand = "SELECT * FROM `view_get_allitem` WHERE `rack_id` = :rack_id";
    $sth = $con->prepare($sqlCommand);
    $sth->execute(array(":rack_id" => $rackid));
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

function add_item($item_name, $item_type, $item_model, $item_brand, $item_serial, $item_unit_size, $item_port_amount) {
    $con = connection();
    $sqlCommand = "INSERT INTO "
            . "`item`(`item_name`, `item_type`, `item_model`, `item_brand`, `item_serial`, `item_unit_size`, `item_port_amount`) "
            . "VALUES (:item_name,:item_type,:item_model,:item_brand,:item_serial,:item_unit_size,:item_port_amount)";
    //echo $sqlCommand;
    $sth = $con->prepare($sqlCommand);
    $sth->execute(
            array(
                ":item_name" => $item_name,
                ":item_type" => $item_type,
                ":item_model" => $item_model,
                ":item_brand" => $item_brand,
                ":item_serial" => $item_serial,
                ":item_unit_size" => $item_unit_size,
                ":item_port_amount" => $item_port_amount
            )
    );
    return $con->lastInsertId();
}

function add_item_detail($rackid, $itemid, $position) {
    $con = connection();
    $sqlCommand = "INSERT INTO `item_detail`(`rack_id`, `item_id`, `item_position`) VALUES (:rack_id,:item_id,:item_position )";
    $sth = $con->prepare($sqlCommand);
    $sth->execute(
            array(
                ":rack_id" => $rackid,
                ":item_id" => $itemid,
                ":item_position" => $position
            )
    );
    return $con->lastInsertId();
}
