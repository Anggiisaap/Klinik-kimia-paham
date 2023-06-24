<?php
    namespace App\Http\Controllers;
    use Illuminate\Http\Request;
    use App\Models\Obat;
    use App\Models\Apoteker;
    use App\Models\Apotek;
    use App\Models\Pasien;
    use App\Models\User;

    Class ContohController extends Controller
    {
        function home () {
            return view('welcome');
        }

        function admin () {
            return view('admin');
        }

        function profile () {
            return view('profile');
        }

        function dashboard() {
            $data_apotek = Apotek::all();
            $data_apoteker = Apoteker::all();
            $data_obat = Obat::all();
            $data_pasien = Pasien::all();
            $data_user = User::all();
            

            return view('dashboard', [
                "data_pasien" => $data_pasien,
                "data_obat" => $data_obat,
                "data_apotek" => $data_apotek,
                "data_apoteker" => $data_apoteker,
                "data_user"=>$data_user,
            ]);
        }

        function apotek() {
            $data_apotek = Apotek::all();
            $data_apoteker = Apoteker::all();
            $data_obat = Obat::all();
            $data_pasien = Pasien::all();
            $data_user = User::all();

            return view('apotek', [
                "data_pasien" => $data_pasien,
                "data_obat" => $data_obat,
                "data_apotek" => $data_apotek,
                "data_apoteker" => $data_apoteker,
                "data_user"=>$data_user,
            ]);
        }

        
    } 