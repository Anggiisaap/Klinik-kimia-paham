<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pasien extends Model
{
    use HasFactory;
    protected $tabel = "pasien";
    protected $primarykey = "id";
    protected $fillable = ["id","nama_pasien","jenis_kelamin","umur","keluhan","obat_id"];

    public function obat(){
        return $this->belongsTo(Obat::class);
    }

    public function apotek(){
        return $this->belongsTo(Apotek::class);
    }
    
}
