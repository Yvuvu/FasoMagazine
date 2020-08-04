<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// use App\Post;
use TCG\Voyager\Models\Category;
use TCG\Voyager\Models\Post;
use TCG\Voyager\Models\Role;
use TCG\Voyager\Models\User;


class PostController extends Controller
{
    public function index() 
    {
        $posts = Post::paginate(2);
        $focus = Post::where('featured','=', "true")->get();
        $last = Post::latest()->take(5)->get();   
        $category = Category::all();    
        return view('accueil', compact('posts', 'focus', 'last', 'category'));
    }

    //     public function displaybreaking(Request $request)
    // {
    //     $response = $this->determineMethodHandler($request);
    //     $apiModel = new Api();
    //     $response['news'] = $apiModel->fetchNewsFromSource($response['sourceId']);
    //     $response['newsSources'] = $this->fetchAllNewsSources();
    //     return view('accueil', $response);
    // }

    public function showpost($slug) 
    {
        $post = Post::where('slug', '=', $slug)->firstOrFail();
        $focus = Post::where('featured','=', "true")->get();
        $last = Post::latest()->take(5)->get();  
        $category = Category::all(); 
        return view('post', compact('post', 'focus', 'last', 'category'));
    }

    public function categorie($id)
    {
        $post = Post::where('category_id', '=', $id)->paginate(2); 
        $focus = Post::where('featured','=', "true")->get();
        $last = Post::latest()->take(5)->get();  
        $category = Category::all();      
    
        return view('categorie', compact('post', 'focus', 'last', 'category'));
    }

    // public function categoriepolitique() 
    // {
    //     $categorie = Post::where('category_id', '=', '1')->paginate(4);
    //     return view('categorie', compact('categorie'));
    // }

    public function categorieeconomie() 
    {
        $categorie = Post::where('category_id', '=', '2')->paginate(4);
        return view('categorie', compact('categorie'));
    }

    public function categoriesociete() 
    {
        $categorie = Post::where('category_id', '=', '3')->paginate(4);
        return view('categorie', compact('categorie'));
    }

    public function categoriecooperation() 
    {
        $categorie = Post::where('category_id', '=', '4')->paginate(4);
        return view('categorie', compact('categorie'));
    }

    public function categorieculture() 
    {
        $categorie = Post::where('category_id', '=', '5')->paginate(4);
        return view('categorie', compact('categorie'));
    }
}
