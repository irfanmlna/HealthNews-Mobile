<?php

header("Access-Control-Allow-Origin: header");
header("Access-Control-Allow-Origin: *");

include_once 'koneksi.php';

if (isset($_POST["id"])) {
    $id = $_POST["id"];
} else {
}
$query = "DELETE FROM pegawai WHERE id= '$id'";
$execute = mysqli_query($koneksi, $query);
$arruser = [];
if ($execute) {
    $arruser["success"] = "true";
    echo "data pegawai berhasil dihapus";
} else {
    $arruser["success"] = "false";
    echo "data pegawai gagal dihapus";
}
print(json_encode($arruser));
?>