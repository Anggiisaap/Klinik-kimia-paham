<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Obat_pasien extends Model
{
    use HasFactory;
    protected $table = "obat_pasien";
    protected $primarykey = "id";
    protected $fillable = ["id","obat_id","pasien_id","apoteker_id"];

    public function apotek(){
        return $this->belongsToMany(Apotek::class, "obat_pasien","obat_id", "pasien_id", "apoteker_id");
    }

    


}
