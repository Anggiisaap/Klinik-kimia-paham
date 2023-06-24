@extends("layouts.layout-1")
@section("konten")
@section("sidebar")

<br/>
<form method="POST" action="{{url('apoteker/'.$model->id)}}">
    @csrf
    <table class="table-bordered table">
        <td colspan="3" style="background-color: #11aa7c;"><center><h2>UPDATE APOTEKER</h2></center></td>
        <input type="hidden" name="_method" value="PATCH">
        <tr>
            <th colspan="2"><label>Nama Apoteker </label></th>
            <td><input type="text" name="nama_apoteker" value="{{ $model->nama_apoteker }}"><br/></td>
        </tr>
        <tr>
            <th colspan="2"><label>Alamat</label></th>
            <td><input type="text" name="alamat" value="{{ $model->alamat }}"><br/></td>
        </tr>
        <tr>
            <th colspan="2"><label>Umur</label></th>
            <td><input type="text" name="umur" value="{{ $model->umur }}"><br/></td>
        </tr>
        <tr>
            <th colspan="2"><label>Jenis Kelamin</label></th>
            <td><input type="text" name="jenis_kelamin" value="{{ $model->jenis_kelamin }}"><br/></td>
        </tr>
    </table>
    
    <button class="btn btn-success" type="submit">SIMPAN</button>
</form>


@endsection