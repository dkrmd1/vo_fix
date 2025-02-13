@extends('layouts.main')
@section('container')
<div class="container">
    <div class="container">
        <div class="page-inner">
            <div class="page-header">
                <h3 class="fw-bold mb-3">Memo Masuk</h3>
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
                        <a href="#">Memo</a>
                    </li>
                    <li class="separator">
                        <i class="icon-arrow-right"></i>
                    </li>
                    <li class="nav-item">
                        <a href="#">Keluar</a>
                    </li>
                </ul>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between mb-3">
                        <div>
                            <button class="btn btn-secondary">Excel</button>
                            <button class="btn btn-secondary">PDF</button>
                            <button class="btn btn-secondary">Print</button>
                            <div class="btn-group">
                                <button class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown">Column visibility</button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Option 1</a></li>
                                    <li><a class="dropdown-item" href="#">Option 2</a></li>
                                </ul>
                            </div>
                        </div>
                        <div>
                            <input type="text" id="search" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="surat-keluar" class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>No. Surat</th>
                                    <th>Jenis</th>
                                    <th>Perihal</th>
                                    <th>Prioritas</th>
                                    <th>Tanggal</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>001/ITGA/M/2024</td>
                                    <td>Memo</td>
                                    <td>Permohonan Pembayaran Biaya Biznet</td>
                                    <td>Biasa</td>
                                    <td>Kamis, 06 Juni 2024</td>
                                    <td>
                                        <div class="btn-group" role="group">
                                            <button class="btn btn-primary btn-sm">View</button>
                                            <button class="btn btn-warning btn-sm">Edit</button>
                                            <button class="btn btn-danger btn-sm">Hapus</button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>002/ITGA/M/2024</td>
                                    <td>Memo</td>
                                    <td>Pembayaran Biaya</td>
                                    <td>Biasa</td>
                                    <td>Jumat, 07 Juni 2024</td>
                                    <td>
                                        <div class="btn-group" role="group">
                                            <button class="btn btn-primary btn-sm">View</button>
                                            <button class="btn btn-warning btn-sm">Edit</button>
                                            <button class="btn btn-danger btn-sm">Hapus</button>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $(document).ready(function() {
                $('#surat-keluar').DataTable({
                    dom: 'Bfrtip',
                    buttons: [
                        {
                            extend: 'excelHtml5',
                            text: 'Excel',
                            className: 'btn btn-secondary'
                        },
                        {
                            extend: 'pdfHtml5',
                            text: 'PDF',
                            className: 'btn btn-secondary'
                        },
                        {
                            extend: 'print',
                            text: 'Print',
                            className: 'btn btn-secondary'
                        },
                        {
                            extend: 'colvis',
                            text: 'Column Visibility',
                            className: 'btn btn-secondary'
                        }
                    ]
                });
            });
        </script>
@endsection