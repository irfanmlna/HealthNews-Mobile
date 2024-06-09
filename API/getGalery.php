<?php

header("Access-Control-Allow-Origin: header");
header("Access-Control-Allow-Origin: *");

include_once 'koneksi.php';
    $query = $koneksi->prepare("Select gambar_berita,judul,isi_berita,tgl_berita from berita;");
    $query->execute();
    $query->bind_result($gambar_berita, $judul, $isi_berita,$tgl_berita,);
    $arraybarang = array();
    while ($query->fetch()) {
        $data = array();
        $data['gambar_berita']=$gambar_berita;
        $data['judul']=$judul;
        $data['isi_berita']=$isi_berita;
        $data['tgl_berita']=$tgl_berita;
        array_push($arraybarang,$data);

    }
    echo json_encode($arraybarang);
?>