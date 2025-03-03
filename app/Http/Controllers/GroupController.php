<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Group;
use App\Models\user;

class GroupController extends Controller
{
    public function group()
    {
        $groups = group::all(); // Ambil semua data dari tabel surat
        return view('master.data.group', compact('groups'));
    }

    public function user()
    {
        $users = group::all(); // Ambil semua data dari tabel surat
        return view('master.data.user', compact('users'));
    }
}
