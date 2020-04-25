<?php
declare(strict_types=1);

namespace App\Controllers;
use App\Models\Users;

class LoginController extends ControllerBase
{
    private function _registerSession($user)
    {
        $this->session->set(
            'auth',
            [
                'userId'   => $user->userId,
                'username' => $user->username,
                'password' => $user->password,
                'nama'   => $user->nama,
                'alamat' => $user->alamat,
                'noTelp' => $user->noTelp,
                'role' => $user->role,
                'status' => $user->status,
            ]
        );
    }

    public function indexAction()
    {
       
       // Get the data from the user
       $username  = $this->request->getPost('username');
       $password = sha1($this->request->getPost('password'));

        // Find the user in the database
        $user = Users::findFirst(
           [
               "username = :username: AND password = :password:",
               'bind' => [
                   'username'  => $username,
                   'password' => $password,
               ]
           ]
       );

       if($user) 
       {
           $success = true;
           $this->_registerSession($user);
       }
       else $success = false;

       // passing the result to the view
       $this->view->success = $success;

       if ($success) {
           $message = "Login Sukses!";
       } else {
           $message = "Email atau Password Salah<br>";
       }

       // passing a message to the view
       $this->view->message = $message;
    }
    

}