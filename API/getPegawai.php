<?php

header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");

require_once 'koneksi.php';

$sql = "SELECT id, nama, no_bp, no_hp, email, tanggal_input FROM pegawai";
$result = $koneksi->query($sql);

if ($result->num_rows > 0) {
    $pegawai_array = array();
    while ($row = $result->fetch_assoc()) {
        $pegawai_array[] = $row;
    }
    echo json_encode($pegawai_array);
} else {
    echo json_encode([]);
}

?>