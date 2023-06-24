<?php

namespace App\Http\Controllers;

use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Models\Obat;

class ObatController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $datas = Obat::all();

        return view("obat.index",compact("datas"));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $model = new Obat;
        return view('obat.create', compact('model'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $model = new Obat;

        $model->id = $request->id;
        $model->jenis_obat = $request->jenis_obat;
        $model->nama_obat = $request->nama_obat;
        $model->apotek_id = $request->apotek_id;
        $model->save();

        return redirect('obat');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $model = Obat::find($id);
        return view('obat.edit', compact('model'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $model = Obat::find($id);
      
        $model->id = $request->id;
        $model->jenis_obat = $request->jenis_obat;
        $model->nama_obat = $request->nama_obat;
        $model->apotek_id = $request->apotek_id;
        $model->save();

        return redirect('obat');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $model = Obat::find($id);
        $model->delete();
        return redirect("obat");
    }
}
