<?php
Namespace App\Models;
use Phalcon\Mvc\Model;

class Books extends Model
{
    public $bukuId;
    public $isbn;
    public $judul;
    public $penulis;
    public $genre;
    public $penerbit;
    public $deskripsi;
    public $gambar;
    public $jumlah;
    public $jumlahKeluar;
    public $dendaPerHari;
    public $status;
}