@extends('layouts.main')
@section('container')
<div class="container">
  <div class="page-inner">
      <div class="page-header">
          <h3 class="fw-bold mb-3">Tambah Memo Baru</h3>
      </div>
      
      <!-- INISIATOR -->
      <form>
          <div class="card">
              <div class="card-header">
                  <div class="card-title">INISIATOR</div>
              </div>
              <div class="card-body">
                  <div class="mb-3">
                      <label class="fw-bold">Nomor Memo</label>
                      <input type="text" class="form-control">
                  </div>
                  <div class="mb-3">
                      <label class="fw-bold">Tempat</label>
                      <input type="text" class="form-control" placeholder="Nama Kota">
                  </div>
                  <div class="mb-3">
                      <label class="fw-bold">Prioritas</label>
                      <select class="form-select">
                          <option value="Biasa">Biasa</option>
                          <option value="Segera">Segera</option>
                          <option value="Urgent">Urgent</option>
                      </select>
                  </div>
                  <div class="mb-3">
                      <label class="fw-bold">Pengirim</label>
                      <input type="text" class="form-control" value="Diki Ramdani" readonly>
                  </div>
                  <div class="mb-3">
                      <label class="fw-bold">Group Pengirim</label>
                      <input type="text" class="form-control" value="Group Information Technology and General affair" readonly>
                  </div>
              </div>
          </div>
      </form>
      
      <!-- KOP NASKAH DINAS -->
      <form>
          <div class="card mt-4">
              <div class="card-header">
                  <div class="card-title">KOP NASKAH DINAS</div>
              </div>
              <div class="card-body">
                  <div class="mb-3">
                      <label class="fw-bold">Penerima</label>
                      <select class="form-select">
                          <option>--Pilih Group--</option>
                      </select>
                  </div>
                  <div class="mb-3">
                      <label class="fw-bold">Perihal</label>
                      <input type="text" class="form-control" placeholder="Perihal">
                  </div>
                  <div class="mb-3">
                      <label class="fw-bold">Lampiran</label>
                      <select class="form-select">
                          <option>--Lampiran--</option>
                      </select>
                  </div>
                  <div class="mb-3">
                      <label class="fw-bold">CC</label>
                      <select class="form-select">
                          <option>--Pilih Group--</option>
                      </select>
                  </div>
              </div>
          </div>
      </form>
      
      <!-- PERSETUJUAN -->
      <form>
          <div class="card mt-4">
              <div class="card-header">
                  <div class="card-title">PERSETUJUAN</div>
              </div>
              <div class="card-body">
                  <div class="mb-3">
                      <label class="fw-bold">Penandatangan</label>
                      <select class="form-select">
                          <option>--Pilih Orang--</option>
                      </select>
                  </div>
              </div>
          </div>
      </form>

      <!-- EDITOR -->
      <form>
          <div class="card mt-4">
              <div class="card-header">
                  <div class="card-title">EDITOR</div>
              </div>
              <div class="card-body">
                  <div class="mb-3">
                      <label class="fw-bold">Catatan</label>
                      <textarea class="form-control" rows="5"></textarea>
                  </div>
              </div>
          </div>
      </form>

      <!-- LAMPIRAN -->
      <form>
          <div class="card mt-4">
              <div class="card-header">
                  <div class="card-title">LAMPIRAN</div>
              </div>
              <div class="card-body">
                  <div class="mb-3">
                      <label class="fw-bold">Upload File</label>
                      <input type="file" class="form-control">
                  </div>
              </div>
          </div>
      </form>
      
      <!-- TOMBOL SIMPAN -->
      <div class="text-center mt-4">
          <button class="btn btn-primary">✔ Simpan Data</button>
      </div>
  </div>
</div>
@endsection