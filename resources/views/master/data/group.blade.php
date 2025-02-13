@extends('layouts.main')
@section('container')
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
                            <a href="/tambah-group" class="btn btn-success">+ Tambah Group</a>
                        </div>
                        <div>
                            <input type="text" id="search" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Group</th>
                                <th>Kode Group</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody id="table-body">
                            <tr>
                                <td>1</td>
                                <td>Group Information Technology and General Affair</td>
                                <td>ITGA/M</td>
                                <td>
                                    <button class="btn btn-primary btn-sm">Edit</button>
                                    <button class="btn btn-danger btn-sm">Hapus</button>
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Group Settlement and Custodian</td>
                                <td>CUS/M</td>
                                <td>
                                    <button class="btn btn-primary btn-sm">Edit</button>
                                    <button class="btn btn-danger btn-sm">Hapus</button>
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Group Sales and Marketing</td>
                                <td>MAR/M</td>
                                <td>
                                    <button class="btn btn-primary btn-sm">Edit</button>
                                    <button class="btn btn-danger btn-sm">Hapus</button>
                                </td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>Group Accounting and Finance</td>
                                <td>FIN/M</td>
                                <td>
                                    <button class="btn btn-primary btn-sm">Edit</button>
                                    <button class="btn btn-danger btn-sm">Hapus</button>
                                </td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>Group Compliance and Audit Internal</td>
                                <td>CIA/M</td>
                                <td>
                                    <button class="btn btn-primary btn-sm">Edit</button>
                                    <button class="btn btn-danger btn-sm">Hapus</button>
                                </td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>Group Risk Manajemen</td>
                                <td>RM/M</td>
                                <td>
                                    <button class="btn btn-primary btn-sm">Edit</button>
                                    <button class="btn btn-danger btn-sm">Hapus</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-flex justify-content-end">
                        <nav>
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">Next</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $(document).ready(function(){
                $("#search").on("keyup", function() {
                    var value = $(this).val().toLowerCase();
                    $("#table-body tr").filter(function() {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                });
            });
        </script>
@endsection