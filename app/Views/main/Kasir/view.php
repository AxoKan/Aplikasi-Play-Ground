<div class="container-fluid content-inner mt-n5 py-0">

    <!-- Cari Barang -->
    <div class="row">
     <div class="card">
        <div class="card-header">
            <h4 class="card-title"><i class="faj-button fa-solid fa-magnifying-glass"></i>Cari Permainan</h4>
        </div>
        <div class="card-body">
        </div>
    </div>

    <!-- Bagian Pembayaran -->
    <div class="card">
        <div class="card-header">
            <h4 class="card-title"><i class="faj-button fa-regular fa-cart-shopping"></i>Pembayaran</h4>
            <p><small class="text-danger text-sm">*</small> Catatan : Pajak PPN sebesar <?= $pajak->persen_pajak ?>%</p>

            <?php if (session()->has('errorKasir')): ?>
            <div class="alert alert-danger d-flex align-items-center" role="alert">
                <i class="faj-button fa-regular fa-circle-exclamation fa-lg"></i>
                <?= session('errorKasir') ?></div>
            <?php endif; ?>
        </div>
       
        <div class="card-body">
            <form id="form-pembayaran" action="<?= base_url('Home/aksi_create') ?>" method="post">
                <div class="row">
                    <div class="col-sm-6">
                    <div class="form-group">
                    <label class="control-label">Permainan :</label>
                    <select class="choices form-select" id="permainan" name="permainan">
                 <option disabled selected>- Pilih -</option>
                    <?php foreach ($t as $p) { ?>
                    <option value="<?=$p->id_permainan?>" data-harga="<?= $p->harga_permainan ?>">
                        <?= $p->nama_permainan?>
                    </option>
                 <?php } ?>
                 </select>
                  </div>
                        <div class="form-group">
                            <label class="control-label">Tanggal :</label>
                            <input type="text" class="form-control" readonly="readonly" name="tanggal" value="<?= date('d M Y') ?>" disabled>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Pelanggan :</label>
                            <select class="choices form-select" id="pelanggan" name="pelanggan" required>
                                <option>- Pilih -</option>
                                <?php foreach ($pelanggan_list as $p) { ?>
                                    <option value="<?= $p->PelangganID ?>"><?= $p->KodePelanggan ?> - <?= $p->NamaPelanggan ?></option>
                                <?php } ?>
                            </select>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Durasi :</label>
                            <select class="form-select" id="durasi" name="durasi" required>
                                <option>- Pilih -</option>
                                <?php foreach ($s as $p) { ?>
                                    <option value="<?= $p->id_paket ?>" data-durasi="<?= $p->durasi_paket ?>">
                                        <?= $p->nama_paket ?>
                                    </option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="form-group">
                            <label class="control-label">Total :</label>
                            <input type="text" class="form-control" id="total_harga_input" name="total" readonly="readonly" >
                        </div>

                        <div class="form-group">
                            <label class="control-label">Bayar :</label>
                            <input type="text" class="form-control" id="bayar_input" name="bayar" required>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Kembalian :</label>
                            <input type="text" class="form-control" id="kembalian_input" name="kembalian"readonly="readonly" >
                        </div>

                        <!-- Input hidden untuk menyimpan pajak -->
                        <input type="hidden" name="pajak" value="<?= $pajak_ppn->id_pajak ?>">
                    </div>
                </div>

                <!-- Tombol submit -->
                <button type="submit" class="btn btn-primary mt-2">Submit</button>
            </form>
        </div>
    </div>
</div>

<script>
   document.addEventListener('DOMContentLoaded', function () {
    // Ambil elemen yang relevan
    const permainanSelect = document.getElementById('permainan');
    const durasiSelect = document.getElementById('durasi');
    const totalHargaInput = document.getElementById('total_harga_input');
    const bayarInput = document.getElementById('bayar_input');
    const kembalianInput = document.getElementById('kembalian_input');

    // Fungsi untuk menghitung total harga
    function hitungTotalHarga() {
        const selectedPermainan = permainanSelect.options[permainanSelect.selectedIndex];
        const selectedDurasi = durasiSelect.options[durasiSelect.selectedIndex];

        // Ambil harga permainan dari atribut data
        const hargaPermainan = selectedPermainan.getAttribute('data-harga');
        const durasi = selectedDurasi.getAttribute('data-durasi');

        // Validasi jika permainan atau durasi belum dipilih
        if (!hargaPermainan || !durasi) {
            totalHargaInput.value = '';
            return;
        }

        // Hitung total harga
        const totalHarga = parseFloat(hargaPermainan) * parseInt(durasi);
        totalHargaInput.value = totalHarga.toFixed(0); // Mengubah ke format angka tanpa desimal
    }

    // Fungsi untuk menghitung kembalian
    function hitungKembalian() {
    // Ambil nilai total harga dan bayar, bersihkan simbol dan titik
    const totalHarga = parseFloat(totalHargaInput.value.replace(/[^\d.-]/g, ''));
    const bayar = parseFloat(bayarInput.value.replace(/[^\d.-]/g, ''));

    // Pastikan nilai totalHarga dan bayar valid (bukan NaN)
    if (!isNaN(totalHarga) && !isNaN(bayar)) {
        // Hitung kembalian (selisih antara bayar dan total harga)
        let kembalian = bayar - totalHarga;

        // Pastikan kembalian tidak negatif
        kembalian = Math.max(0, kembalian); 

        // Menampilkan kembalian tanpa simbol mata uang dan tanpa desimal
        kembalianInput.value = kembalian.toFixed(0); // Mengubah ke format angka tanpa desimal
    } else {
        kembalianInput.value = ''; // Jika input tidak valid
    }
}


    // Event listener untuk perubahan permainan, durasi, atau bayar
    permainanSelect.addEventListener('change', hitungTotalHarga);
    durasiSelect.addEventListener('change', hitungTotalHarga);
    bayarInput.addEventListener('input', hitungKembalian);

    // Panggil hitungTotalHarga pada awalnya
    hitungTotalHarga();
});

</script>
