<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Activity Log</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Include Select2 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 30px;
        }
        .table thead th {
            background-color: #007bff;
            color: #ffffff;
            text-align: center;
        }
        .table tbody tr:nth-child(odd) {
            background-color: #e9ecef;
        }
        .table tbody tr:hover {
            background-color: #d6d6d6;
        }
        .no-logs {
            text-align: center;
            color: #6c757d;
            font-style: italic;
        }
        h2 {
            color: #007bff;
            margin-bottom: 20px;
        }
        .card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .card-header {
            background-color: #007bff;
            color: #ffffff;
            font-weight: bold;
        }
        /* Make link color inherit from the table cell */
        .table td a {
            color: inherit;  /* Inherit color from the parent td */
            text-decoration: none;  /* Remove underline */
        }
        .table td a:hover {
            text-decoration: underline;  /* Add underline on hover */
        }
    </style>
</head>
<body>
<div class="container content-inner mt-n5 py-0" style="max-width: 100%; padding-left: 2rem; padding-right: 2rem;">
   <br>
   <br>

   <!-- Kotak Total -->
   <div class="row mt-4" data-aos="fade-up" data-aos-delay="200">
      <div class="col-sm-4">
         <div class="card">
            <div class="card-body p-4"> <!-- Perbesar padding -->
               <div class="d-flex align-items-center">
                  <!-- Total Permainan -->
                  <div class="me-5"> <!-- Tambahkan margin antar item -->
                     <div class="progress-widget">
                        <div id="circle-progress-01" class="circle-progress circle-progress-primary" data-min-value="0" data-max-value="100" data-value="100" data-type="percent" style="font-size: 2rem;">
                           <i class="fa-regular fa-database fa-2xl"></i> <!-- Icon lebih besar -->
                        </div>
                        <div class="progress-detail mt-3 text-center">
                           <p class="mb-1" style="font-size: 1.2rem;">Total Permainan</p> <!-- Teks lebih besar -->
                           <h4 class="counter" style="font-size: 1.5rem;"><?= $jumlah_permainan ?></h4>
                           <a href="<?=base_url('home/permainan')?>" class="btn btn-outline-primary rounded-pill mt-3 btn-lg">Detail</a> <!-- Tombol lebih besar -->
                        </div>
                     </div>
                  </div>

                  <!-- Total Pelanggan -->
                  <div class="me-5">
                     <div class="progress-widget">
                        <div id="circle-progress-02" class="circle-progress circle-progress-info" data-min-value="0" data-max-value="100" data-value="100" data-type="percent" style="font-size: 2rem;">
                           <i class="fa-regular fa-user fa-2xl"></i>
                        </div>
                        <div class="progress-detail mt-3 text-center">
                           <p class="mb-1" style="font-size: 1.2rem;">Total Pelanggan</p>
                           <h4 class="counter" style="font-size: 1.5rem;"><?= $jumlah_pelanggan ?></h4>
                           <a href="<?=base_url('pelanggan')?>" class="btn btn-outline-info rounded-pill mt-3 btn-lg">Detail</a>
                        </div>
                     </div>
                  </div>

                  <!-- Total Transaksi -->
                  <div>
                     <div class="progress-widget">
                        <div id="circle-progress-03" class="circle-progress circle-progress-success" data-min-value="0" data-max-value="100" data-value="100" data-type="percent" style="font-size: 2rem;">
                           <i class="fa-regular fa-user fa-2xl"></i>
                        </div>
                        <div class="progress-detail mt-3 text-center">
                           <p class="mb-1" style="font-size: 1.2rem;">Total Transaksi</p>
                           <h4 class="counter" style="font-size: 1.5rem;"><?= $jumlah_transaksi ?></h4>
                           <a href="<?=base_url('transaksi')?>" class="btn btn-outline-success rounded-pill mt-3 btn-lg">Detail</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>


               

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Include Select2 JS -->
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script>
        $(document).ready(function() {
            // Initialize Select2 on the user select dropdown
            $('#userSelect').select2({
                placeholder: "Select a value",
                allowClear: true
            });

            // Filter table rows based on selected Kelas, Blok, or Pelajaran
            $('#userSelect').on('change', function() {
                var selectedValue = $(this).val();
                var logRows = $('#logTableBody tr');

                logRows.each(function() {
                    var row = $(this);
                    var rowKelas = row.data('kelas');
                    var rowBlok = row.data('blok');
                    var rowPelajaran = row.data('pelajaran');

                    if (selectedValue === 'all' || rowKelas === selectedValue || rowBlok === selectedValue || rowPelajaran === selectedValue) {
                        row.show();
                    } else {
                        row.hide();
                    }
                });
            });
        });
    </script>
</body>
</html>
