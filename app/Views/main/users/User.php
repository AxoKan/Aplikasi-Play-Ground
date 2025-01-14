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
                  <a href="<?= base_url("home/Aduser") ?>">
                    <button class="btn btn-success">+ Tambah</button>
                  </a>

                  <label for="dynamic-filter">Filter :</label>
                  <select id="dynamic-filter">
                    <option value="">All</option>
                  </select>
                </div>
              </div>
              <!-- Table with stripped rows -->
              <table class="table datatable" id="mitraTable">
                <thead>
                  <tr style="font-weight: bold; color: black; font-size: larger;">
                    <td align="center" scope="col">No</td>
                    <td align="center" scope="col">Name</td>
                    <td align="center" scope="col">Username</td>
                    <td align="center" scope="col">Level</td>
                    <td align="center" scope="col">Action</td>
                  </tr> 
                </thead>
                <tbody>
                <?php
                  $no = 1;
                  foreach ($sa as $key) {
                    
                ?>
                  <tr class="table-row" data-level="<?= $key->Level ?>">
                    <td align="center" scope="col"><?= $no++ ?></td>
                    <td align="center" scope="col"><?= $key->real ?></td>
                    <td align="center" scope="col"><?= $key->user ?></td>
                    <td align="center" scope="col"><?= $key->Level ?></td>
                    <td align="center" scope="col">
                      <div style="display: flex; gap: 10px; justify-content: center;">
                        <a class="btn btn-danger" href="<?= base_url('home/DelUser/' . $key->id_user) ?>">Delete</a>
                        <a class="btn btn-warning" href="<?= base_url('home/UpUser/' . $key->id_user) ?>">Edit</a>
                      </div>
                    </td>
                  </tr>
                <?php
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
  // Function to populate filters dynamically based on Level
  function updateDynamicFilter() {
    const table = document.getElementById('mitraTable');
    const rows = table.querySelectorAll('.table-row');
    const filterSet = new Set();

    // Collect unique values for Level
    rows.forEach(row => {
      const level = row.getAttribute('data-level');
      if (level) {
        filterSet.add(level);
      }
    });

    // Populate the dynamic filter dropdown
    const dynamicFilter = document.getElementById('dynamic-filter');
    dynamicFilter.innerHTML = '<option value="">All</option>';
    filterSet.forEach(level => {
      const option = document.createElement('option');
      option.value = level;
      option.textContent = level;
      dynamicFilter.appendChild(option);
    });
  }

  // Function to filter table rows based on selected filter option
  function filterTable() {
    const selectedFilter = document.getElementById('dynamic-filter').value;
    const rows = document.querySelectorAll('#mitraTable .table-row');

    rows.forEach(row => {
      const rowLevel = row.getAttribute('data-level');
      if (selectedFilter === "" || rowLevel === selectedFilter) {
        row.style.display = ''; // Show the row
      } else {
        row.style.display = 'none'; // Hide the row
      }
    });
  }

  // Event listeners for filter dropdown
  document.getElementById('dynamic-filter').addEventListener('change', filterTable);

  // Initialize dynamic filter on page load
  window.onload = function() {
    updateDynamicFilter();
  };
</script>

<!-- Include Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
