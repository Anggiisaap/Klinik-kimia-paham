<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Obat extends Model
{
    use HasFactory;
    protected $table ="obat";
    protected $primarykey = "id";
    protected $fillable = ["id","jenis_obat","nama_obat","apotek_id"];


    public function apotek(){
        return $this->belongsTo(Apotek::class);
    }
}
