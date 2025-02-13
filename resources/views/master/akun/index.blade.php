@extends('layouts.main')
@section('container')

<div class="container mt-4">
    <h2>Data Akun</h2>
    <div class="row">
        <!-- Profil Pengguna -->
        <div class="col-md-4">
            <div class="card text-center">
                <div class="card-body">
                    <img src="profile-placeholder.png" class="rounded-circle" width="100" alt="Profile Picture">
                    <h4 class="mt-2">Diki Ramdani</h4>
                    <p>Email: <a href="mailto:dramdani@gmail.com">dramdani@gmail.com</a></p>
                    <p>NIP: 002</p>
                    <button class="btn btn-danger">&larr; Logout</button>
                </div>
            </div>
        </div>
        <!-- Form Edit Akun -->
        <div class="col-md-8">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <ul class="nav nav-tabs card-header-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">Edit Akun</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Ganti Password</a>
                        </li>
                    </ul>
                </div>
                <div class="card-body">
                    <form>
                        <div class="mb-3">
                            <label>Nama Lengkap</label>
                            <input type="text" class="form-control" value="Diki Ramdani">
                        </div>
                        <div class="mb-3">
                            <label>NIP</label>
                            <input type="text" class="form-control" value="002" readonly>
                        </div>
                        <div class="mb-3">
                            <label>Email</label>
                            <input type="email" class="form-control" value="dramdani@gmail.com">
                        </div>
                        <div class="mb-3">
                            <label>Nomor Hp</label>
                            <input type="text" class="form-control" value="083811557100">
                        </div>
                        <button class="btn btn-primary">&#x21bb; Simpan Data</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Upload TTD -->
    <div class="row mt-3">
        <div class="col-md-4">
            <div class="card text-center">
                <div class="card-body">
                    <h5>TTD</h5>
                    <img src="ttd-placeholder.png" class="img-fluid" alt="TTD">
                    <form>
                        <input type="file" class="form-control mt-2">
                        <button class="btn btn-primary mt-2">&#x21bb; Update TTD</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection