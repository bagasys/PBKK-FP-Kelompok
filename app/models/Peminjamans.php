<?php
Namespace App\Models;
use Phalcon\Mvc\Model;

class Peminjamans extends Model
{
    public $peminjamanId;
    public $userId;
    public $bukuId;
    public $tglPeminjaman;
    public $tglHarusKembali;
    public $tglKembali;
    public $denda;
    public function onConstruct() {
    
    Model::setup(array(    
        'notNullValidations' => false
    ));
    }
 
}