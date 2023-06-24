<?php

namespace App\Http\Controllers;

use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Models\Apoteker;

class ApotekerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $datas = Apoteker::all();
        return view("apoteker.index",compact("datas"));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $model = new Apoteker;
        return view('apoteker.create', compact('model'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $model = new Apoteker;
      
        $model->nama_apoteker = $request->nama_apoteker;
        $model->alamat = $request->alamat;
        $model->umur = $request-> umur;
        $model->jenis_kelamin= $request->jenis_kelamin;
        $model->user_id= $request->user_id;
        $model->apotek_id= $request->apotek_id;
        $model->save();

        return redirect('apoteker');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $model = Apoteker::find($id);
        return view('apoteker.edit', compact('model'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $model = Apoteker::find($id);
      
        $model->nama_apoteker = $request->nama_apoteker;
        $model->alamat = $request->alamat;
        $model->umur = $request-> umur;
        $model->jenis_kelamin= $request->jenis_kelamin;
        $model->save();

        return redirect('apoteker');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $model = Apoteker::find($id);
        $model->delete();
        return redirect("apoteker");
    }
}
