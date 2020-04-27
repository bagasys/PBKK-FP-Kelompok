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
        
        $currentPage = 1;

        $bukus = $books->toArray();

        $paginator = new PaginatorArray(
            [
                'data'  => $bukus,
                'limit' => 2,
                'page'  => 1,
            ]
        );
        
        $page = $paginator->paginate();
        $this->view->page = $page;
    }

    public function detailAction()
    {
        $bukuId = $this->dispatcher->getParam(0);
        $buku = Books::findFirst("bukuId = '$bukuId'");
        $this->view->buku = $buku;
    }

}

