@extends("layouts.layout-1")
@section("konten")
@section("sidebar")

<br/>
<form method="POST" action="{{url('pasien/'.$model->id)}}">
    @csrf
    <table class="table-bordered table">
        <td colspan="3" style="background-color: #11aa7c;"><center><h2>UPDATE PASIEN</h2></center></td>
        <input type="hidden" name="_method" value="PATCH">
        <tr >
            <th colspan="2"><label>Nama Pasien </label></th>
            <td><input type="text" name="nama_pasien" value="{{ $model->nama_pasien }}"><br/></td>
        </tr>
        <tr>
            <th colspan="2"><label>Jenis Kelamin </label></th>
            <td><input type="text" name="jenis_kelamin" value="{{ $model->jenis_kelamin }}"><br/></td>
        </tr>
        <tr>
            <th colspan="2"><label>Umur  </label></th>
            <td><input type="text" name="umur" value="{{ $model->umur }}"><br/></td>
        </tr>
        <tr>
            <th colspan="2"><label>Keluhan </label></th>
            <td><input type="text" name="keluhan" value="{{ $model->keluhan }}"><br/></td>
        </tr>
        <tr>
            <th colspan="2"><label>Obat Id  </label></th>
            <td><input type="text" name="obat_id" value="{{ $model->obat_id }}"><br/></td>
        </tr>
        <tr>
            <th colspan="2"><label>Apotek Id  </label></th>
            <td><input type="text" name="apotek_id" value="{{ $model->apotek_id }}"><br/></td>
        </tr>

    </table>
    <button class="btn btn-success" type="submit">SIMPAN</button>



</form>


@endsection