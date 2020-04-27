<?php
declare(strict_types=1);

namespace App\Controllers;
use App\Models\Wishlists;
use App\Models\Books;

class ProfileController extends ControllerBase
{

    public function indexAction()
    {
        $user = $this->session->get('auth');
        $id = $user['userId'];

        $books = array();
        $wishlists = Wishlists::find("userId = '$id'");
        
        foreach ( $wishlists as $wishlist)
        {
            $tmp = Books::findfirst("bukuId = '$wishlist->bukuId'");
            array_push($books, $tmp);
        }

        $this->view->books = $books;
        
    }

}

