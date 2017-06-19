<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

class PagesController extends Controller
{
    public function contact()
    {
    	$header = 'to jest nagłowek strony kontakt';
    	return view('pages.contact')->with('header', $header);
    }

    public function about()
    {
    	return view('pages.about');
    }

    public function postContact() {
    	
    }
}
