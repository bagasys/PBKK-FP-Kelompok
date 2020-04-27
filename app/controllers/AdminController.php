<?php
declare(strict_types=1);

namespace App\Controllers;
use App\Models\Books;

class AdminController extends ControllerBase
{

    public function indexAction()
    {
       
    }
    
    public function bukuAction()
    {
       
    }

    public function tambahAction()
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
            $gambar = $this->request->getUploadedFiles();
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
    }
    
    public function peminjamanAction()
    {
       
    }
    
    public function editbukuAction()
    {
       
    }

}
