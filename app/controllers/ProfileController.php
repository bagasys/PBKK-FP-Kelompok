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

        $books_wishlists = array();
        $wishlists = Wishlists::find("userId = '$id'");
        foreach ( $wishlists as $wishlist)
        {
            $book = Books::findfirst("bukuId = '$wishlist->bukuId'");
            if(! $book) continue;
            $arr = array();
            array_push($arr, $book, $wishlist);
            array_push($books_wishlists , $arr);
        }

        $username = $this->session->get('auth')['username'];
        $peminjamans = peminjamans::find("username = '$username' AND tglKembali IS NULL");
        // $peminjamans = peminjamans::find("userId = '$id'");
        $books_peminjamans = array();
        foreach ( $peminjamans as $peminjaman)
        {
            $book = Books::findfirst("isbn = '$peminjaman->isbn'");
            $arr2 = array();
            array_push($arr2, $book, $peminjaman);
            array_push($books_peminjamans, $arr2);
        }
        
        $this->view->peminjamans = $books_peminjamans;
        $this->view->arrs = $books_wishlists;
    }
    
    public function deleteWishlistAction()
    {
        $wishlistId = $this->dispatcher->getParam(0);
        $wishlist = Wishlists::findFirst("wishlistId = '$wishlistId'");

        $wishlist->delete();
        return $this->response->redirect('/profile');
    }

}

