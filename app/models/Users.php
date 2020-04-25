<?php
Namespace App\Models;
use Phalcon\Mvc\Model;

class Users extends Model
{
    public $userId;
    public $username;
    public $password;
    public $nama;
    public $alamat;
    public $noTelp;
    public $role;
    public $status;
}