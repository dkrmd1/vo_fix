<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Memo;


class MemoController extends Controller
{
    public function masuk()
    {
        $memos = Memo::all(); // Ambil semua data dari tabel surat
        return view('master.memo.masuk.index', compact('memos'));
    }

    public function keluar()
    {
        $memos = Memo::all(); // Ambil semua data dari tabel surat
        return view('master.memo.keluar.index', compact('memos'));
    }

    
    public function create()
    {
        $memos = Memo::all(); // Ambil semua data dari tabel surat
        return view('master.memo.create', compact('memos'));
    }

}

