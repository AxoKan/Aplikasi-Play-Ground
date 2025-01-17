<main id="main" class="main">
  <div class="container">
    <div class="pagetitle">
      <h1></h1>
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row justify-content-center">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <div class="d-flex justify-content-between align-items-center mb-3">
                

                <div class="filter-container">
                  
                </div>
              </div>
              <!-- Table with stripped rows -->
              <table class="table datatable" id="mitraTable">
                <thead>
                  <tr style="font-weight: bold; color: black; font-size: larger;">
                    <td align="center" scope="col">No</td>
                    <td align="center" scope="col">Nama</td>
                    <td align="center" scope="col">Tanggal </td>
                    <td align="center" scope="col">Mulai</td>
                    <td align="center" scope="col">Selesai</td>
                    <td align="center" scope="col">Total harga</td>
                    <td align="center" scope="col">Status</td>
                    <td align="center" scope="col">Action</td>
                  </tr> 
                </thead>
                <tbody>
                <?php
  $no = 1;
  foreach ($sa as $key) {
    if ($key->deleted_ats === null) { // Check if deleted_by is null
?>
      <tr class="table-row" data-class="<?= $key->class ?>" data-angkatan="<?= $sa->angkatan ?>">
        <td align="center" scope="col"><?= $no++ ?></td>
        <td align="center" scope="col"><?= $key->NamaPelanggan?></td>
        <td align="center" scope="col"><?= $key->tanggal_transaksi ?></td>
        <td align="center" scope="col"><?= $key->jam_mulai ?></td>
        <td align="center" scope="col"><?= $key->jam_selesai ?></td>
        <td align="center" scope="col">Rp <?= number_format($key->total_harga, 0, ',', '.') ?></td>
        <td>
                             <?php
                             if ($key->status == 1) {
                               echo '<span class="badge rounded-pill bg-primary">Masih Bermain</span>';
                            } elseif ($key->status == 2) {
                               echo '<span class="badge rounded-pill bg-success">Selesai Bermain</span>';
                            }
                            ?>
                         </td>
        <td align="center" scope="col">
          <div style="display: flex; gap: 10px; justify-content: center;">
            <a class="btn btn-danger" href="<?= base_url('home/DelTrans/'.$key->id_transaksi ) ?>">Delete</a>
            <a class="btn btn-warning" href="https://wa.me/<?= $key->NomorTelepon ?>?text=Durasi%20Axo%20Happy%20Playground%20Mu%20Tela%20Selesai,%20Harap%20Segera%20Menjemput%20AnakAnda" target="_blank">wa</a>

          </div>
        </td>
      </tr>
<?php
    }
  }
?>

                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>
</main><!-- End #main -->

<script>
  // Function to populate filters dynamically based on sorting criterion
  function updateDynamicFilter() {
    const sortBy = document.getElementById('sort-filter').value;
    const table = document.getElementById('mitraTable');
    const rows = table.querySelectorAll('.table-row');
    const filterSet = new Set();

    // Collect unique values for the selected sorting criterion
    rows.forEach(row => {
      const value = row.getAttribute(`data-${sortBy}`);
      if (value) {
        filterSet.add(value);
      }
    });

    // Populate the dynamic filter dropdown
    const dynamicFilter = document.getElementById('dynamic-filter');
    dynamicFilter.innerHTML = '<option value="">ALL</option>';
    filterSet.forEach(value => {
      const option = document.createElement('option');
      option.value = value;
      option.textContent = sortBy === 'class' ? 'Class ' + value : 'Angkatan ' + value;
      dynamicFilter.appendChild(option);
    });
  }

  // Function to filter table rows based on selected filter option
  function filterTable() {
    const sortBy = document.getElementById('sort-filter').value;
    const selectedFilter = document.getElementById('dynamic-filter').value;
    const rows = document.querySelectorAll('#mitraTable .table-row');

    rows.forEach(row => {
      const rowValue = row.getAttribute(`data-${sortBy}`);
      if (selectedFilter === "" || rowValue === selectedFilter) {
        row.style.display = ''; // Show the row
      } else {
        row.style.display = 'none'; // Hide the row
      }
    });
  }

  // Event listeners for sort and filter dropdowns
  document.getElementById('sort-filter').addEventListener('change', updateDynamicFilter);
  document.getElementById('dynamic-filter').addEventListener('change', filterTable);

  // Initialize dynamic filter on page load
  window.onload = function() {
    document.getElementById('sort-filter').value = '';
    updateDynamicFilter();
  };
</script>

<!-- Include Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
