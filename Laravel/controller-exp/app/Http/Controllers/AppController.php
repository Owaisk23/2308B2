<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AppController extends Controller
{
    // Return View Home
    public function index(){
        // return "Hello from app controller";
        $name = "Sameer";
        $skills = "MERN Stack Developer";

        // // using compact method
        // return view("welcome", compact("name", "skills"));
  
        // using associative array
        return view("welcome", array(
            'name' => $name,
            'skills' => $skills
        ));


    }
    
    // Return About View
    public function about(){
        return view("about");
    }

}
