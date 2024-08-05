<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AppController extends Controller
{
    // Return View Home
    public function index(){
        // return "Hello from app controller";
        $username = "Sameer";
        $userage = 22;

        // // using compact method
        // return view("welcome", compact("name", "skills"));
  
        // using associative array
        // return view("welcome", array(
        //     'name' => $name,
        //     'skills' => $skills
        // ));

        // using with method
        return view("welcome")->with('username')->with('userage');
    }
    
    // Return About View
    public function about(){
        return view("about");
    }

}
