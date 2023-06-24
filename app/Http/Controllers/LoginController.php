<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    
    public function login (){
        return view('login');
    }

    public function loginproses (Request $request){
        if(Auth::attempt($request->only('email','password'))){
        return redirect('/dashboard');
        }
         $validated = $request->validate([
            'id' => 'unique:user',
            'email' => 'required|unique:users',
            'password' => 'required|min:8',
        ]); 
        $email = $request->input("email");       
        $password = $request->input("password");    
        $user = User::where("email",$email)->where("password",$password)->first();
        if($user == null){
            return \redirect('login');
        }
        
  
    }

    public function logout (){
        Auth::logout();
        return \redirect('login');

    }

    public function register (){
        return view('register');
    }

    public function registeruser (Request $request){
        User::create([
            'id'=>$request->id,
            'name'=>$request->name,
            'email'=>$request->email,
            'password'=> bcrypt($request->password),
            'level'=>$request->level,
            'remember_token'=>Str::random(60),
        ]);

        return redirect('/login');
    }
    
}
