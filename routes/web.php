<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SuratController;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\MemoController;
use App\Http\Controllers\GroupController;
use App\Http\Controllers\Dashboard\DashboardController;
use PHPUnit\TextUI\XmlConfiguration\Group;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['middleware' => 'guest'], function(){
    Route::get('/login', [AuthController::class, 'index'])->name('login');
    Route::post('/login', [AuthController::class, 'authenticate'])->name('login.auth');
 });

Route::group(['middleware' => 'auth'], function(){
    Route::get('/', [DashboardController::class, 'index'])->name('dashboard');
    Route::get('/surat/masuk', [SuratController::class, 'masuk'])->name('master.surat.masuk.index');
    Route::get('/surat/keluar', [SuratController::class, 'keluar'])->name('master.surat.keluar.index');
    Route::get('/surat/create', [SuratController::class, 'create'])->name('master.surat.create');
    Route::get('/memo', [MemoController::class, 'index'])->name('master.memo.index');
    Route::get('/memo/masuk', [MemoController::class, 'masuk'])->name('master.memo.masuk.index');
    Route::get('/memo/keluar', [MemoController::class, 'keluar'])->name('master.memo.keluar.index');
    Route::get('/memo/create', [MemoController::class, 'create'])->name('master.memo.create');
    Route::get('/data/group', [GroupController::class, 'group'])->name('master.data.group');
    Route::get('/data/user', [GroupController::class, 'user'])->name('master.data.user');
 });

 