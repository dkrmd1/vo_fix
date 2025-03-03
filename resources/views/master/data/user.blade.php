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
    <div class="d-flex justify-content-between align-items-center mb-3">
        <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addUserModal">+ Tambah User</button></div>
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
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>Nama</th>
                        <th>Email</th>
                        <th>Divisi</th>
                        <th>Jabatan</th>
                        <th>Status</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Agus Rohman</td>
                        <td>agro@gmail.com</td>
                        <td>Group Accounting and Finance</td>
                        <td>Group Head</td>
                        <td><span class="badge bg-success">Aktif</span></td>
                        <td>
                            <button class="btn btn-primary btn-sm">Edit</button>
                            <button class="btn btn-danger btn-sm">Hapus</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Budi Nugraha</td>
                        <td>bnugraha@gmail.com</td>
                        <td>Group Information Technology and General Affair</td>
                        <td>Group Head</td>
                        <td><span class="badge bg-success">Aktif</span></td>
                        <td>
                            <button class="btn btn-primary btn-sm">Edit</button>
                            <button class="btn btn-danger btn-sm">Hapus</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Contoh Staff</td>
                        <td>staff@gmail.com</td>
                        <td>Group Information Technology and General Affair</td>
                        <td>Staff</td>
                        <td><span class="badge bg-success">Aktif</span></td>
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

<!-- Modal Tambah User -->
<div class="modal fade" id="addUserModal" tabindex="-1" aria-labelledby="addUserModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addUserModalLabel">Tambah Data Group</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-3">
                        <label class="fw-bold">Nama Group</label>
                        <input type="text" class="form-control" placeholder="Nama Group">
                    </div>
                    <div class="mb-3">
                        <label class="fw-bold">Kode Group</label>
                        <input type="text" class="form-control" placeholder="Kode Group ex. ITGA/M">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Tambah</button>
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