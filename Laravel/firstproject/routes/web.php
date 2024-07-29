<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

// About Page Route
Route::get('/about', function () {
    return view('about');
});
