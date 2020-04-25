<?php
declare(strict_types=1);

namespace App\Controllers;
use App\Models\Users;

class LogoutController extends ControllerBase
{
    public function indexAction()
    {
        $this->session->destroy();
        return $this->response->redirect('');
    }

}