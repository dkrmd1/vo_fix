<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Group;

class GroupController extends Controller
{
    public function group()
    {
        $groups = group::all(); // Ambil semua data dari tabel surat
        return view('master.data.group.group', compact('groups'));
    }
}
