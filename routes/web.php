<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContohController;
use App\Http\Controllers\PasienController;
use App\Http\Controllers\ObatController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\ApotekerController;
use App\Http\Controllers\ApotekController;
use App\Http\Controllers\Obat_pasienController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/', function(){
    return view('/dashboard');
});


Route::middleware("auth")->group(function(){

Route::get('/dashboard',  [ContohController::class, "dashboard"])-> name("dashboard");
Route::get('/apotek',  [ContohController::class, "apotek"])-> name("apotek");
Route::get('/admin',  [ContohController::class, "admin"])-> name("admin");
Route::get('/profile',  [ContohController::class, "profile"])-> name("profile");
Route::resource('pasien', PasienController::class);
Route::resource('obat', ObatController::class);
Route::resource('apoteker', ApotekerController::class);
Route::resource('obat_pasien', Obat_pasienController::class);
Route::get('/logout', [LoginController::class, 'logout'])->name('logout');

});


Route::get('/login', function(){
    return view('Pengguna.login');
});
Route::get('/klinik', [LoginController::class, 'login'])->name('login');
Route::post('/loginproses', [LoginController::class, 'loginproses'])->name('loginproses');

Route::get('/register', function(){
    return view('Pengguna.register');
});
Route::get('/klinik', [LoginController::class, 'register'])->name('register');
Route::post('/registeruser', [LoginController::class, 'registeruser'])->name('registeruser');





