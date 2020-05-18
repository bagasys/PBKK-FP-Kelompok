<?php
declare(strict_types=1);

namespace App\Controllers;
use App\Models\Users;

class UserController extends ControllerBase
{
    public function indexAction()
    {
        // $message = $this->dispatcher->getParams(0); 

        // $this->view->success = false;
        // $this->view->message = var_dump($message);
    }

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

    public function loginAction()
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
           return $this->response->redirect('');
       }
       else $success = false;

       // passing the result to the view
       $this->view->success = $success;

       if ($success) {
           $message = "Login Sukses!";
           $this->view->message = $message;
           return $this->response->redirect('user');
       } else {
           $message = "Email atau Password Salah<br>";
           $this->view->message = $message;
           return $this->response->redirect('/');
       }
    }

    public function logoutAction()
    {
        $this->session->destroy();
        return $this->response->redirect('');
    }
    
}