<?php

namespace App\Http\Controllers;

use Request;

use App\Http\Requests;
use App\Http\Requests\CreateVideoRequest;
use App\Video;
use App\Category;
use Auth;
use Session;
use DB;


class VideosController extends Controller
{
	public function __construct()
	{
		$this->middleware('auth', ['only'=>['create','edit','destroy']]);
	}

    //Pobieramy liste filmow

    public function index()
    {
    	$videos = Video::latest()->get();
    	return view('videos.index')->with('videos',$videos);
    }

    // Jeden Film
    public function show($id)
    {
    	$video = Video::findOrFail($id);

        $categoryCounter = DB::table('categories')->count();
        $userCounter = DB::table('users')->count();
        $videoCounter = DB::table('videos')->count();

    	return view('videos.show', compact('video','categoryCounter','userCounter','videoCounter'));
    }

    // Wyświetla formularz dodawania filmu

    public function create()
    {
        $categories = Category::lists('name','id');
    	return view('videos.create')->with('categories',$categories);
    }

    // Zapis filmu do bazy
    public function store(CreateVideoRequest $request)
    {
    	$video = new Video($request->all());
    	Auth::user()->videos()->save($video);

        $categoryIds = $request->input('CategoryList');
        $video->categories()->attach($categoryIds);
    	Session::flash('video_created','Film został dodany');
    	return redirect('videos');
    }
    // Formularz edycji filmu

    public function edit($id)
    {
        $categories = Category::lists('name','id');
    	$video = Video::findOrFail($id);
    	return view('videos.edit', compact('video','categories'));
    }

    // Aktualizacja filmu
    public function update($id, CreateVideoRequest $request)
    {
    	$video = Video::findOrFail($id);
    	$video->update($request->all());
        $video->categories()->sync($request->input('CategoryList'));
    	return redirect('videos');
    }

    public function destroy($id)
    {
        $video = Video::findorFail($id);
        $video->delete();
        return redirect('videos');
    }
}
