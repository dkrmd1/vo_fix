<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Surat;

class SuratController extends Controller
{

    public function masuk()
    {
        $surat = Surat::all(); // Ambil semua data dari tabel surat
        return view('master.surat.masuk.index', compact('surat'));
    }

    
    public function keluar()
    {
        $surat = Surat::all(); // Ambil semua data dari tabel surat
        return view('master.surat.keluar.index', compact('surat'));
    }

    public function create()
    {
        $surat = Surat::all(); // Ambil semua data dari tabel surat
        return view('master.surat.create', compact('surat'));
    }
    
}
