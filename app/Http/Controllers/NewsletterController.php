<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Newsletter;

class NewsletterController extends Controller
{
 
    public function store(Request $request)
    {
        if ( ! Newsletter::isSubscribed($request->email) ) 
        {
            Newsletter::subscribePending($request->email);
            return redirect('/')->with('success', 'Merci pour votre souscription, veuillez la confirmez par email');
        }
        return redirect('/')->with('failure', 'Désolé, vous avez déjà souscrit! ');
             
    }
}
