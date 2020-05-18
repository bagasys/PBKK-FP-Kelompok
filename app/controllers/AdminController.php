<?php
declare(strict_types=1);

namespace App\Controllers;
use App\Models\Books;
use App\Models\Peminjamans;

class AdminController extends ControllerBase
{
    public function initialize()
    {
        $user = $this->session->get('auth');
        if( ! $user || $user['role'] != 'admin') {
            return $this->response->redirect('/error');
        }
    }
    
    public function indexAction()
    {
        return $this->response->redirect('/admin/buku');
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

    public function setBukuAction()
    {
        $bukuId = $this->dispatcher->getParam(0);
        $buku = Books::findFirst("bukuId = '$bukuId'");
        $buku->status = !$buku->status;

        $buku->save();
        return $this->response->redirect('/admin/buku');
    }

    public function deleteBukuAction()
    {
        $bukuId = $this->dispatcher->getParam(0);
        $buku = Books::findFirst("bukuId = '$bukuId'");

        unlink($buku->gambar);
        $buku->delete();
        return $this->response->redirect('/admin/buku');
    }

    public function peminjamanAction()
    {
        $peminjamans = Peminjamans::find();
        $this->view->peminjamans = $peminjamans;
    }
    
    public function createPeminjamanAction()
    {
        $peminjaman = new Peminjamans();
        $peminjaman->username = $this->request->getPost('username');
        $peminjaman->isbn = $this->request->getPost('isbn');
        
        $tanggal = time();
        $tanggal2 = time() + (86400 * $this->request->getPost('lamaPinjam'));
        $lamaPinjam = $this->request->getPost('lamaPinjam');

        $peminjaman->tglPeminjaman = date('Y-m-d', time());
        $peminjaman->tglHarusKembali = date('Y-m-d', strtotime("now + $lamaPinjam days")); 
        
        $peminjaman->save();

        return $this->response->redirect('/admin/peminjaman');
    }

    public function updatePeminjamanAction(){
        $peminjamanId = $this->dispatcher->getParam(0);
        $peminjaman = Peminjamans::findFirst($peminjamanId);
        if ($this->request->isPost()){
            $peminjaman->tglKembali = date('Y-m-d', time());
            $success = $peminjaman->save();
            $this->view->success = $success;

            if ($success) {
                $message = "Thanks for registering!";
            } else {
                $message = "Sorry, the following problems were generated:<br>"
                        . implode('<br>', $peminjaman->getMessages());
            }
            $this->view->message = $message;
            return $this->response->redirect('/admin/peminjaman');
        }
       
        $tglHarusKembali = date_create($peminjaman->tglHarusKembali);
        $tglKembali = date_create(date('Y-m-d', time()));
        $diff = date_diff($tglKembali, $tglHarusKembali);
        $hariTerlambat = 0;
        if($diff->format("%R") == '-'){
            $hariTerlambat=$diff->format("%a");
        }
        $this->view->peminjaman = $peminjaman;
        $this->view->hariTerlambat = $hariTerlambat;

        $buku = Books::findFirst("isbn = '$peminjaman->isbn'");
        $this->view->buku = $buku;
        $this->view->denda = $hariTerlambat * $buku->dendaPerHari;
    }

}
