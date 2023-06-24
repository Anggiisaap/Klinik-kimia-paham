<nav class="navbar" style="background-color: #11aa7c;">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Beranda</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="{{ url('dashboard') }}">Home</a>
            <a class="nav-link active" aria-current="page" href="{{ url('pasien') }}">Pasien</a>
            <a class="nav-link active" aria-current="page" href="{{ url('obat') }}">Obat</a>
            <a class="nav-link active" aria-current="page" href="{{ url('apoteker') }}">Apoteker</a>
            <a class="nav-link active" aria-current="page" href="{{ url('apotek') }}">Apotek</a>
          </li>
        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>