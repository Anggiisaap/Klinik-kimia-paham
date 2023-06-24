<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Pasien;




class PasienController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index() 
    {
        $datas = Pasien::all();

        return view("pasien.index",compact("datas"));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $model = new Pasien;
        return view('pasien.create', compact('model'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $model = new Pasien;
      
        $model->nama_pasien = $request->nama_pasien;
        $model->jenis_kelamin = $request->jenis_kelamin;
        $model->umur = $request-> umur;
        $model->keluhan = $request->keluhan;
        $model->obat_id = $request->obat_id;
        $model->apotek_id = $request->apotek_id;
        $model->save();

        return redirect('pasien');
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
        $model = Pasien::find($id);
        return view('pasien.edit', compact('model'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $model = Pasien::find($id);
      
        $model->nama_pasien = $request->nama_pasien;
        $model->jenis_kelamin = $request->jenis_kelamin;
        $model->umur = $request-> umur;
        $model->keluhan = $request->keluhan;
        $model->obat_id = $request->obat_id;
        $model->apotek_id = $request->apotek_id;
        $model->save();

        return redirect('pasien');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $model = Pasien::find($id);
        $model->delete();
        return redirect("pasien");
    }
}
