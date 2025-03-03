@extends('layouts.main')
@section('container')

<div class="container">
    <div class="container">
        <div class="page-inner">
            <div class="page-header">
                <h3 class="fw-bold mb-3">Surat Masuk</h3>
                <ul class="breadcrumbs mb-3">
                    <li class="nav-home">
                        <a href="#">
                            <i class="icon-home"></i>
                        </a>
                    </li>
                    <li class="separator">
                        <i class="icon-arrow-right"></i>
                    </li>
                    <li class="nav-item">
                        <a href="#">Surat</a>
                    </li>
                    <li class="separator">
                        <i class="icon-arrow-right"></i>
                    </li>
                    <li class="nav-item">
                        <a href="#">Masuk</a>
                    </li>
                </ul>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Daftar Surat Masuk</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="basic-datatables" class="display table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th>No. Surat</th>
                                            <th>Jenis</th>
                                            <th>Pengirim</th>
                                            <th>Perihal</th>
                                            <th>Prioritas</th>
                                            <th>Tanggal</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>No. Surat</th>
                                            <th>Jenis</th>
                                            <th>Pengirim</th>
                                            <th>Perihal</th>
                                            <th>Prioritas</th>
                                            <th>Tanggal</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>001/ITGA/M/2024</td>
                                            <td>Surat</td>
                                            <td>Bagian Keuangan</td>
                                            <td>Pembayaran Biaya Layanan</td>
                                            <td>Biasa</td>
                                            <td>06 Juni 2024</td>
                                            <td><button class="btn btn-primary btn-sm">Lihat</button></td>
                                        </tr>
                                        <tr>
                                            <td>002/ITGA/M/2024</td>
                                            <td>Memo</td>
                                            <td>Bagian SDM</td>
                                            <td>Rekrutmen Pegawai Baru</td>
                                            <td>Penting</td>
                                            <td>07 Juni 2024</td>
                                            <td><button class="btn btn-primary btn-sm">Lihat</button></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function() {
            $('#basic-datatables').DataTable();
        });
    </script>

@endsection