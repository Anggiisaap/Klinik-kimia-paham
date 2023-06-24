<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Apoteker extends Model
{
    use HasFactory;
    protected $table = "apoteker";
    protected $primarykey = "id";
    protected $fillable = ["id","nama_apoteker","user_id"];

    public function user(){
        return $this->belongsTo(User::class);
    }

    public function pasien(){
        return $this->hasMany(Pasien::class, "pasien_id");
    }
    public function apotek(){
        return $this->belongsTo(Apoteker::class, "pasien_id");
    }
}
