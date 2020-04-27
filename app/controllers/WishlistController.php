<?php
declare(strict_types=1);

namespace App\Controllers;
use App\Models\Wishlists;

class WishlistController extends ControllerBase
{

    public function indexAction()
    {
        
    }

    public function createAction()
    {
        if ($this->request->isPost()) {
            $wishlist = new Wishlists();
            $wishlist->userId = $this->request->getPost('userId');
            $wishlist->bukuId = $this->request->getPost('bukuId');
            $wishlist->save();
        }
    }

    public function deleteAction()
    {
        if ($this->request->isPost()) {
            $wishlistId = $this->request->getPost('wishlistId');
            $userId = $this->request->getPost('userId');

            
            $wishlist = Books::findFirst($wishlistId);
            $buku->delete();
            return $this->response->redirect('/profile');
        }
    }

}

