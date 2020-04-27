<?php
declare(strict_types=1);
namespace App\Controllers;
use App\Models\Books;
class KatalogController extends ControllerBase
{

    public function indexAction()
    {
        $books = Books::find();
        $this->view->books = $books;
    }

    public function detailAction()
    {
        $bukuId = $this->dispatcher->getParam(0);

        $buku = Books::findFirst("bukuId = '$bukuId'");
        $this->view->buku = $buku;
    }

}

