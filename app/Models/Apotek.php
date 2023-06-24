<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Apotek extends Model
{
    use HasFactory;
    protected $table = "apotek";
    protected $primarykey = "id";
    protected $fillable = ["id","nama_apotek","alamat","masa_berlaku","kewenangan","pasien_id","obat_id","apoteker_id"];

    public function obat(){
        return $this->hasMany(Obat::class);
    }
    public function pasien(){
        return $this->hasMany(Pasien::class);
    }
    public function apoteker(){
        return $this->hasMany(Apoteker::class);
    }


}
