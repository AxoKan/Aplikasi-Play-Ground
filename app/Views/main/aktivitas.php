<style>
    /* Ensure the container is correctly positioned */
    .container-fluid.content-inner {
        margin-top: 0; /* Remove any margin from the top */
        padding: 20px; /* Add padding for content spacing */
    }

    /* Fix issues with positioning and spacing */
    .card {
        margin-bottom: 20px; /* Add margin for better spacing between cards */
    }

    .hide-column {
        display: none;
    }
</style>

<div class="container-fluid content-inner mt-0 py-0"> <!-- Adjusted margin-top -->
    <div class="row">

       <!-- Masih Bermain-->
       <div class="col-sm-12 col-lg-6">
        <div class="card">
            <div class="card-header d-flex justify-content-between">
                <div class="header-title">
                    <h4 class="card-title"><?= $subtitle1 ?></h4>
                </div>
            </div>
            <div class="card-body">
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Nama Anak</th>
                    <th>Durasi</th>
                    <th class="hide-column">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $no = 1;
                $masih_bermain = []; // Array untuk transaksi yang masih berjalan
                foreach ($sa as $riz) {
                    // Periksa apakah status transaksi adalah 1 (Masih Bermain)
                    if ($riz->status == 1) {
                        $tanggal_transaksi = strtotime($riz->tanggal_transaksi);
                        $jam_mulai = strtotime($riz->jam_mulai);
                        $jam_selesai = strtotime($riz->jam_selesai);

                        // Menggabungkan tanggal dan waktu mulai transaksi
                        $waktu_mulai = strtotime(date("Y-m-d", $tanggal_transaksi) . " " . date("H:i:s", $jam_mulai));

                        // Jika jam selesai lebih kecil dari jam mulai, tambahkan 1 hari pada tanggal transaksi
                        if ($jam_selesai < $jam_mulai) {
                            $tanggal_transaksi = strtotime("+1 day", $tanggal_transaksi);
                        }

                        // Menggabungkan tanggal dan waktu selesai transaksi
                        $waktu_selesai = strtotime(date("Y-m-d", $tanggal_transaksi) . " " . date("H:i:s", $jam_selesai));

                        // Periksa apakah transaksi masih berjalan berdasarkan waktu sekarang
                        if ($waktu_mulai <= time() && time() <= $waktu_selesai) {
                            ?>
                            <tr>
                                <td><?php echo $no++; ?></td>
                                <td><?php echo $riz->NamaPelanggan; ?></td>

                                <?php
                                // Hitung durasi transaksi yang masih berjalan
                                $durasi = $waktu_selesai - time();
                                $hours = floor($durasi / 3600);
                                $minutes = floor(($durasi % 3600) / 60);
                                $seconds = $durasi % 60;

                                // Format angka jam, menit, dan detik agar menampilkan dua digit
                                $hoursFormatted = str_pad($hours, 2, '0', STR_PAD_LEFT);
                                $minutesFormatted = str_pad($minutes, 2, '0', STR_PAD_LEFT);
                                $secondsFormatted = str_pad($seconds, 2, '0', STR_PAD_LEFT);
                                ?>

                                <td><span id="countdown_<?php echo $riz->id_transaksi; ?>"><?php echo $hoursFormatted . ":" . $minutesFormatted . ":" . $secondsFormatted; ?></span></td>

                                <!-- Tambahkan ID pada tombol edit -->
                                <td class="hide-column">
                                    <a id="edit_button_<?php echo $riz->id_transaksi; ?>" href="<?php echo base_url('transaksi/aksi_edit_aktivitas/' . $riz->id_transaksi) ?>" class="btn btn-warning my-1">
                                        <i class="fa-regular fa-arrows-rotate" style="color: #ffffff;"></i>
                                    </a>
                                    <!-- Hidden input to store id_transaksi -->
                                    <input type="hidden" name="id_transaksi[]" value="<?php echo $riz->id_transaksi; ?>" id="hidden_id_<?php echo $riz->id_transaksi; ?>" />
                                </td>
                            </tr>
                            <?php
                            // Menyimpan data durasi countdown untuk setiap transaksi yang masih berjalan
                            $masih_bermain[$riz->id_transaksi] = $durasi;
                        }
                    }
                }
                ?>
            </tbody>
        </table>
    </div>
</div>

        </div>
    </div>

    <!-- Selesai Bermain -->
    <div class="col-sm-12 col-lg-6">
        <div class="card">
            <div class="card-header d-flex justify-content-between">
                <div class="header-title">
                    <h4 class="card-title"><?= $subtitle2 ?></h4>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>Nama Anak</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $no = 1;
                            foreach ($sa as $riz) {
                                // Konversi tanggal transaksi ke format timestamp
                                $tanggal_transaksi = strtotime($riz->tanggal_transaksi);
                                // Konversi tanggal hari ini ke format timestamp
                                $today = strtotime(date("Y-m-d"));

                                // Periksa apakah tanggal transaksi sama dengan tanggal hari ini
                                if ($riz->status == 2 && $tanggal_transaksi == $today) {
                                    ?>
                                    <tr>
                                        <td><?php echo $no++; ?></td>
                                        <td><?php echo $riz->NamaPelanggan; ?></td>
                                        <td><span class="badge rounded-pill bg-success">Selesai Bermain</span></td>
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


    <script>
// Loop through all active transactions
<?php foreach ($masih_bermain as $id_transaksi => $durasi): ?>
    var endTime_<?= $id_transaksi ?> = <?= time() + $durasi ?> * 1000; // Convert to milliseconds
    var customerName_<?= $id_transaksi ?> = "<?= $sa[$id_transaksi]->NamaPelanggan ?>";  // Get customer name from DB
    var rideName_<?= $id_transaksi ?> = "<?= $sa[$id_transaksi]->nama_permainan ?>";  // Get ride name from DB

    startCountdownTimer(<?= $id_transaksi ?>, endTime_<?= $id_transaksi ?>, customerName_<?= $id_transaksi ?>, rideName_<?= $id_transaksi ?>);
<?php endforeach; ?>

// Function to start the countdown timer
function startCountdownTimer(id, endTime, customerName, rideName) {
    var timerId;

    function updateCountdown() {
        var now = new Date().getTime();
        var distance = endTime - now;

        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);

        // Format hours, minutes, and seconds to always show two digits
        var hoursFormatted = hours.toString().padStart(2, '0');
        var minutesFormatted = minutes.toString().padStart(2, '0');
        var secondsFormatted = seconds.toString().padStart(2, '0');

        document.getElementById('countdown_' + id).innerHTML = hoursFormatted + ":" + minutesFormatted + ":" + secondsFormatted;

        // Check if the countdown has finished
        if (distance <= 0) {
            clearInterval(timerId); // Stop the countdown timer

            // Announcement: Create the message for VoiceRSS
            var message = "Waktu untuk anak " + customerName + " pada wahana " + rideName + " sudah habis!";

            // Call the VoiceRSS API for the announcement
            var voiceRSSUrl = 'https://api.voicerss.org/';
            var voiceApiKey = 'fbb172cb64bc4683a31be7f4f9a3ccf4'; // Replace with your VoiceRSS API key

            var audio = new Audio(`${voiceRSSUrl}?key=${voiceApiKey}&hl=id-id&src=${encodeURIComponent(message)}&r=0&c=mp3`);
            audio.play(); // Play the audio

            // Redirect to the status page after the announcement
            var hiddenId = document.getElementById('hidden_id_' + id).value;
            window.location.href = "<?= base_url('Home/status') ?>/" + hiddenId;
        }
    }

    // Call the updateCountdown function every second
    timerId = setInterval(updateCountdown, 1000);

    // Start the countdown immediately on page load
    updateCountdown();
}
</script>


</div>
