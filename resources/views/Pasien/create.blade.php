@extends("layouts.layout-1")
@section("konten")
@section("sidebar")

<br/>
<form method="POST" action="{{url('pasien')}}">
    @csrf
    <table class="table-bordered table">
        <td colspan="3" style="background-color: #11aa7c;"><center><h2>TAMBAH PASIEN</h2></center></td>
        <tr>
            <th colspan="2"><label>Nama Pasien </label></th>
            <td><input type="text" name="nama_pasien"><br/></td>
        </tr>
        <tr>
            <th colspan="2"><label>Jenis Kelamin </label></th>
            <td><input type="text" name="jenis_kelamin"><br/></td>
        </tr>
        <tr>
            <th colspan="2"><label>Umur  </label></th>
            <td><input type="text" name="umur"><br/></td>
        </tr>
        <tr>
            <th colspan="2"><label>Keluhan  </label></th>
            <td><input type="text" name="keluhan"><br/></td>
        </tr>
        <tr>
            <th colspan="2"><label>Obat Id  </label></th>
            <td><input type="text" name="obat_id"><br/></td>
        </tr>
        <tr>
            <th colspan="2"><label>Apotek Id  </label></th>
            <td><input type="text" name="apotek_id"><br/></td>
        </tr>
    </table>
    
    <button class="btn btn-success" type="submit">SIMPAN</button>
</form>


@endsection