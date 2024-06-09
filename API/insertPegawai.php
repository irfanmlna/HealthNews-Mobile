<?php
include_once 'koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nama = mysqli_real_escape_string($koneksi, $_POST['nama']);
    $noBp = mysqli_real_escape_string($koneksi, $_POST['no_bp']);
    $noHp = mysqli_real_escape_string($koneksi, $_POST['no_hp']);
    $email = mysqli_real_escape_string($koneksi, $_POST['email']);

    $query = "INSERT INTO pegawai (nama, no_bp, no_hp, email, tanggal_input) VALUES ('$nama', '$noBp', '$noHp', '$email', NOW())";

    if (mysqli_query($koneksi, $query)) {
        http_response_code(201);
        echo json_encode(array("message" => "Pegawai berhasil ditambahkan"));
    } else {
        http_response_code(500);
        echo json_encode(array("message" => "Gagal menambahkan pegawai: " . mysqli_error($koneksi)));
    }
} else {
    http_response_code(405);
    echo json_encode(array("message" => "Method not allowed"));
}
?>
