@extends("layouts.master")

@section("layout")

<div class="row">
    <div class="col-2">
        @yield("konten")
    </div>

    <div class="col-8">
        @yield("sidebar")
    </div>
</div>

@endsection