<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

// About Page Route
Route::get('/about', function () {
    return view('about');
});
// Another Way
Route::view('/contact', 'contact');

// Routes with required parameter
// Route::get('/service/{para}', function () {
//     return view('service');
// });

// Routes with optional parameter
// Route::get('/service/{serviceparam?}', function () {
//     return view('service');
// });
