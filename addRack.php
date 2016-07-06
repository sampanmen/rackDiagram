<?php
require_once 'config.php';
require_once 'function.inc.php';

if (isset($_POST['btn_sent']) && !($_POST['idc_id'] == "") && !($_POST['rack_amount'] == "")) {
    $get_idc_id = $_POST['idc_id'];
    $get_rack_amount = $_POST['rack_amount'];

    add_rack($get_idc_id, $get_rack_amount, '-', '-', '42');
//    echo "<pre>";
//    print_r($_POST);
//    echo "</pre>";
}

$get_idc_all = get_idc_all();
//echo "<pre>";
//print_r($get_idc_all);
//echo "</pre>";
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Add Rack</title>
    </head>
    <body>
        <form action="" method="POST">
            <label for="idc_id">Rack ID</label>
            <select id="rack_id" name="idc_id">
                <option></option>
                <?php
                foreach ($get_idc_all as $value) {
                    ?>
                    <option value="<?= $value['idc_id'] ?>" <?= isset($get_rack_id) && $get_rack_id == $value['idc_id'] ? "selected" : "" ?>><?= $value['idc_name'] ?></option>
                <?php } ?>
            </select>
            <label for="rack_amount">Rack Amount</label>
            <input type="number" id="rack_amount" name="rack_amount" value="<?= isset($get_rack_amount) ? $get_rack_amount : "" ?>">
            <button type="submit" id="btn_sent" name="btn_sent" value="sent">send</button>
        </form>
    </body>
</html>

