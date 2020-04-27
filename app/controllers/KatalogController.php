<?php
declare(strict_types=1);

namespace App\Controllers;
use App\Models\Books;
use Phalcon\Paginator\Adapter\NativeArray as PaginatorArray;

class KatalogController extends ControllerBase
{

    public function indexAction()
    {
        $books = Books::find();
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
                'limit' => 5,
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

        $this->view->buku = $buku;
    }

}

