<?php

use App\Http\Controllers\SearchController;
use Illuminate\Support\Facades\Route;

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
Route::get('/',[SearchController::class,'search'])->name('data-search');
Route::get('/index',[SearchController::class,'index'])->name('index');
Route::get('/post-data-search',[SearchController::class,'postSearch'])->name('post-data-search');