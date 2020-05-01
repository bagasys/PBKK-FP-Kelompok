<?php
Namespace App\Models;
use Phalcon\Mvc\Model;

class Peminjamans extends Model
{
    public $peminjamanId;
    public $username;
    public $isbn;
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