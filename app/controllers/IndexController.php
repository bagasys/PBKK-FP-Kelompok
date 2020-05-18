<?php
declare(strict_types=1);

namespace App\Controllers;

class IndexController extends ControllerBase
{

    public function indexAction()
    {
       // Check if the variable is defined
       $flag = 0;
       if ($this->session->has('auth')) {
            // Retrieve its value
            $user = $this->session->get('auth');
            if($user && $user['role'] != 'admin') {
                $flag = 1;
            }
        }

        return $this->view->admin = $flag;
    }

}

