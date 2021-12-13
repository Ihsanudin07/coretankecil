<?php

use App\Http\Controllers\ArtikelController;
use App\Http\Controllers\BannerController;
use App\Http\Controllers\DashboardController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TagController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\KategoriController;
use App\Http\Controllers\LogoController;
use App\Http\Controllers\UserController;

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

// Route::get('/dashboard', function () {
//     return view('admin/dashboard');
// });

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::group(['middleware'=>['auth']], function(){
    Route::get('/dashboard', [DashboardController::class,'index']);

    Route::resource('/kategori', KategoriController::class);
    Route::post('/kategori/search', [KategoriController::class,'index']);

    Route::resource('/tag', TagController::class);
    Route::post('/tag/search', [TagController::class,'index']);

    Route::resource('/logo', LogoController::class);

    Route::resource('/post', PostController::class);
    Route::get('/post/{id}/konfirmasi', [PostController::class,'konfirmasi']);
    Route::get('/post/{id}/hapus', [PostController::class,'hapus']);
    Route::post('/post/search', [PostController::class,'index']);

    Route::resource('/banner', BannerController::class);
    Route::get('/banner/{id}/konfirmasi', [BannerController::class,'konfirmasi']);
    Route::get('/banner/{id}/hapus', [BannerController::class,'hapus']);
    Route::post('/banner/search', [BannerController::class,'index']);

    Route::get('/user/{id}/setting', [UserController::class,'setting']);
    Route::patch('/user/{id}/setting', [UserController::class,'ubah_password']);
});

Route::get('/', [ArtikelController::class, 'index']);
Route::get('/{slug}', [ArtikelController::class, 'artikel']);
Route::get('/artikel-kategori/{slug}', [ArtikelController::class, 'kategori']);
Route::get('/artikel-tag/{slug}', [ArtikelController::class, 'tag']);
Route::get('/artikel-banner/{slug}', [ArtikelController::class, 'banner']);
Route::get('/artikel-author/{id}', [ArtikelController::class, 'author']);

