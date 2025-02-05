<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function __construct()
    {
        // Middleware auth memastikan hanya pengguna yang sudah login yang dapat mengakses
        $this->middleware('auth');
    }

    public function index()
    {
        return view('index');
    }
}
