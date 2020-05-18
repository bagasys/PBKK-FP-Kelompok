<?php
declare(strict_types=1);

namespace App\Controllers;
use App\Models\Wishlists;
use App\Models\Peminjamans;
use App\Models\Books;

class ProfileController extends ControllerBase
{
    public function initialize()
    {
        $user = $this->session->get('auth');
        if( ! $user ) {
            return $this->response->redirect('/error');
        }
    }

    public function indexAction()
    {
        $user = $this->session->get('auth');
        $id = $user['userId'];

        $arrs = array();
        $wishlists = Wishlists::find("userId = '$id'");
        foreach ( $wishlists as $wishlist)
        {
            $book = Books::findfirst("bukuId = '$wishlist->bukuId'");
            if(! $book) continue;
            $arr = array();
            array_push($arr, $book, $wishlist);
            array_push($arrs, $arr);
        }

        $username = $this->session->get('auth')['username'];
        // $peminjamans = peminjamans::find("username = '$username'");
        $peminjamans = peminjamans::find([
            ['username' => 'test'],
            
        ]);
        $arrs2 = array();
        foreach ( $peminjamans as $peminjaman)
        {
            $book = Books::findfirst("isbn = '$peminjaman->isbn'");
            $arr2 = array();
            array_push($arr2, $book, $peminjaman);
            array_push($arrs2, $arr2);
        }
        $this->view->peminjamans = $arrs2;
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

