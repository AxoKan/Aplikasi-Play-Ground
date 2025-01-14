<div class="container-xxl flex-grow-1 container-p-y">

<div class="card mb-4">

  <!-- Account -->
  <div class="card-body">
    <div class="d-flex align-items-start align-items-sm-center gap-4">
  <div style="text-align: center;">

</div>

      <div class="button-wrapper">
     

       
      </div>
    </div>
  </div>
  <hr class="my-0" />
  <div class="card-body">
  <form action="<?= base_url('home/aksi_AddPe')?>" method="post" enctype="multipart/form-data">
    <div class="container">
<form>
<div class="row mb-3">
<label for="nama" class="col-sm-2 col-form-label">Nama</label>
<div class="col-sm-10">
<input type="text" class="form-control" name="nama" id="nama" >
</div>
</div>
<div class="row mb-3">
<label for="nama" class="col-sm-2 col-form-label">Nama Orang Tua</label>
<div class="col-sm-10">
<input type="text" class="form-control" name="ortu" id="nama" >
</div>
</div>
<div class="row mb-3">
<label for="nama" class="col-sm-2 col-form-label">Alamat</label>
<div class="col-sm-10">
<input type="text" class="form-control" name="alamat" id="nama" >
</div>
</div>

<div class="row mb-3">
<label for="nama" class="col-sm-2 col-form-label">Nomor Telepon</label>
<div class="col-sm-10">
<input type="text" class="form-control" name="wa" id="nama" >
</div>
</div>

<input type="hidden" name="id" value="<?= $user->id_permainan ?>">
      <div class="mt-2">
        <button type="submit" class="btn btn-primary me-2">Save changes</button>
      </div>
    </form>
  </div>
  <!-- /Account -->
</div>
