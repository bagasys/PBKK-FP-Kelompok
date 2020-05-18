<?php
declare(strict_types=1);

namespace App\Controllers;
use App\Models\Books;
use App\Models\Wishlists;
use Phalcon\Paginator\Adapter\NativeArray as PaginatorArray;

class KatalogController extends ControllerBase
{

    public function indexAction()
    {
        $books = Books::find("status = 1");
        $this->view->books = $books;
        
        $currentPage = (int) $_GET['page'];
        if ($currentPage == 0)
        {
            $currentPage = 1;
        }

        $books = $books->toArray();
        $paginator = new PaginatorArray(
            [
                'data'  => $books,
                'limit' => 6,
                'page'  => $currentPage,
            ]
        );
        
        $page = $paginator->paginate();
        $this->view->page = $page;
        $this->view->num = $currentPage;
    }

    public function detailAction()
    {
        $bukuId = $this->dispatcher->getParam(0);
        $buku = Books::findFirst("bukuId = '$bukuId'");

        if ($this->session->has('auth')){
            $userId = $this->session->get('auth')["userId"];
            $isWished = Wishlists::findFirst("userId = $userId AND bukuId = '$bukuId'");
        }
        else{
            $isWished = null;
        }

        $this->view->isWished = $isWished;
        $this->view->buku = $buku;
    }

}

