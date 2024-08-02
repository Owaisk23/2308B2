<?php

use Illuminate\Support\Facades\Route;
use \App\http\Controllers\AppController;

Route::get('/',[AppController::class, 'index']);

Route::get('/about',[AppController::class, 'about']);

// Route::get('/', function () {
//     return view('welcome');
// });
