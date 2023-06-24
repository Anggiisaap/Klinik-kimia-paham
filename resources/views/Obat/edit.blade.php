@extends("layouts.layout-1")
@section("konten")
@section("sidebar")

<br/>
<form method="POST" action="{{url('obat/'.$model->id)}}">
    @csrf
    <table class="table-bordered table">
        <td colspan="3" style="background-color: #11aa7c;"><center><h2>UPDATE OBAT</h2></center></td>
        <input type="hidden" name="_method" value="PATCH">
        <tr>
            <th colspan="2"><label>ID Obat </label></th>
            <td><input type="text" name="id" value="{{ $model->id }}"><br/></td>
        </tr>
        <tr>
            <th colspan="2"><label>Jenis Obat </label></th>
            <td><input type="text" name="jenis_obat" value="{{ $model->jenis_obat }}"><br/></td>
        </tr>
        <tr>
            <th colspan="2"><label>Nama Obat </label></th>
            <td><input type="text" name="nama_obat" value="{{ $model->nama_obat }}"><br/></td>
        </tr>
        <tr>
            <th colspan="2"><label>Apotek ID </label></th>
            <td><input type="text" name="apotek_id" value="{{ $model->apotek_id }}"><br/></td>
        </tr>

    </table>
    <button class="btn btn-success" type="submit">SIMPAN</button>



</form>


@endsection