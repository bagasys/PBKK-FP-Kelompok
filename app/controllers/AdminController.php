<?php
declare(strict_types=1);

namespace App\Controllers;
use App\Models\Books;

class AdminController extends ControllerBase
{

    public function indexAction()
    {
    }

    public function bukuAction(){
        $books = Books::find();
        $this->view->books = $books;
    }

    public function createBukuAction()
    {
        $book = new Books();

        //assign value from the form to $user
        $book->isbn = $this->request->getPost('isbn');
        $book->judul = $this->request->getPost('judul');
        $book->penulis = $this->request->getPost('penulis');
        $book->genre = $this->request->getPost('genre');
        $book->penerbit = $this->request->getPost('penerbit');
        $book->deskripsi = $this->request->getPost('deskripsi');
        $book->jumlah = $this->request->getPost('jumlah');
        $book->dendaPerHari = $this->request->getPost('dendaPerHari');

        $path ='books/'.$book->isbn.'.jpg';
        if ($this->request->hasFiles(true)) {
            $gambar = $this->request->getUploadedFiles()[0];
            $gambar->moveTo($path);
            $this->view->cek = "Hiiiiiiiiiii";
        }
        else
        {
            $this->view->cek = "HHHHHHHHHHHH";
        }
        
        $book->gambar = $path;
        
        // Store and check for errors
        $success = $book->save();

        // passing the result to the view
        $this->view->success = $success;

        if ($success) {
            $message = "Thanks for registering!";
        } else {
            $message = "Sorry, the following problems were generated:<br>"
                     . implode('<br>', $book->getMessages());
        }

        // passing a message to the view
        $this->view->message = $message;
        return $this->response->redirect('/admin/buku');
    }

    public function readBukuAction(){
        $bukuId = $this->dispatcher->getParam(0);

        $buku = Books::findFirst("bukuId = '$bukuId'");
        $this->view->buku = $buku;
    }
    
    public function editBukuAction(){
        $bukuId = $this->dispatcher->getParam(0);
        $buku = Books::findFirst("bukuId = '$bukuId'");
        $this->view->buku = $buku;
    }

    public function updateBukuAction()
    {
        $bukuId = $this->dispatcher->getParam(0);
        $buku = Books::findFirst("bukuId = '$bukuId'");

        if ($this->request->isPost()) {
            //assign value from the form to $user
            $buku = Books::findFirst($bukuId);
            $buku->isbn = $this->request->getPost('isbn');
            $buku->judul = $this->request->getPost('judul');
            $buku->penulis = $this->request->getPost('penulis');
            $buku->genre = $this->request->getPost('genre');
            $buku->penerbit = $this->request->getPost('penerbit');
            $buku->deskripsi = $this->request->getPost('deskripsi');
            $buku->jumlah = $this->request->getPost('jumlah');
            $buku->dendaPerHari = $this->request->getPost('dendaPerHari');

            $path ='books/'.$buku->isbn.'.jpg';
            if ($this->request->hasFiles(true)) {
                $gambar = $this->request->getUploadedFiles()[0];
                $gambar->moveTo($path);
            }
            
            $buku->gambar = $path;
            $buku->save();
        }

        $this->view->buku = $buku;
    }

    public function deleteBukuAction()
    {
        $bukuId = $this->dispatcher->getParam(0);
        $buku = Books::findFirst("bukuId = '$bukuId'");

        $buku->delete();
        return $this->response->redirect('/admin');
    }

    public function peminjamanAction()
    {
       
    }

}
