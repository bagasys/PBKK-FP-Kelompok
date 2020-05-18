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
            $bukuId = $this->request->getPost('bukuId');
            if($bukuId){
                $wishlist = new Wishlists();
                $wishlist->userId = $this->session->get('auth')['userId'];
                $wishlist->bukuId = $bukuId;
                $wishlist->save();
                return $this->response->redirect('/profile');
            }
        }
    }

    public function deleteAction()
    {
        if ($this->request->isPost()) {
            $wishlistId = $this->request->getPost('wishlistId');
            $userId = $this->request->getPost('userId');

            $wishlist = Wishlists::findFirst($wishlistId);
            $wishlist->delete();
            return $this->response->redirect('/profile');
        }
    }

}

