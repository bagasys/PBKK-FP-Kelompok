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

        $arrs = array();
        $wishlists = Wishlists::find("userId = '$id'");
        foreach ( $wishlists as $wishlist)
        {
            $book = Books::findfirst("bukuId = '$wishlist->bukuId'");
            $arr = array();
            array_push($arr, $book, $wishlist);
            array_push($arrs, $arr);
        }

        $this->view->arrs = $arrs;
    }
    
    public function deleteWishlistAction()
    {
        $wishlistId = $this->dispatcher->getParam(0);
        $wishlist = Wishlists::findFirst("wishlistId = '$wishlistId'");

        $wishlist->delete();
        return $this->response->redirect('/profile');
    }

}

