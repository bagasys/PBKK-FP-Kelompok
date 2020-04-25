<?php
declare(strict_types=1);

namespace App\Controllers;

class IndexController extends ControllerBase
{

    public function indexAction()
    {
       // Check if the variable is defined
       if ($this->session->has('auth')) {
        // Retrieve its value
        $user = $this->session->get('auth');
        }
        
        if($user)
        {
            $this->view->nama = $user['nama'];
        }
        else
        {
            // redirect to login
        }


    }

}

