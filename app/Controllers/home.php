<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\M_Lelang;

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class Home extends BaseController
{

	public function Login()
	{
        $model= new M_lelang();
        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = array_filter($logoData, function($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = reset($filteredLogo);

    echo view('login/Login', $data);
	}
	public function aksi_login() {
        
        $username = $this->request->getPost('username');
        $password = $this->request->getPost('password');
        $recaptchaResponse = $this->request->getPost('g-recaptcha-response');
        $backupCaptcha = $this->request->getPost('backup_captcha');
    
        // Check if the server is online
       
        $model = new M_lelang();
            $where = array(
                'user' => $username,
                'password' => $password
            );
        
            $cek = $model->getWhere('user', $where);
        if ($cek > 0) {
                    session()->set('user', $cek->username);
                    session()->set('id_user', $cek->id_user);
                    session()->set('Email', $cek->email);
                    session()->set('real', $cek->name);
                    session()->set('Level', $cek->Level);
                    
                    return redirect()->to('login1');
                } else {
                    return redirect()->to('login/login');
                }
    }
    public function login1()
	{
        $user_id = session()->get('id_user');
        $model = new M_lelang();
 
 $model->logActivity($user_id, 'Login', 'User Has Log in.');
 return redirect()->to('dashboard');
		
	}
    
	public function setting()
           {
            $userLevel = session()->get('Level');
            $allowedLevels = ['admin'];
            $user_id = session()->get('id_user');
            if (in_array($userLevel, $allowedLevels)) {
               $model = new M_lelang();

               $logoData = $model->tampil('logo'); // Fetch all logos
               $filteredLogo = array_filter($logoData, function($item) {
                   return $item->id_logo == 1; // Adjust this condition as needed
               });
               $data['satu'] = reset($filteredLogo);
               $where = array('id_logo' => $id);
               $data['sa'] = $model->getwhere('logo', $where);
               $where=array('id_user'=>session()->get('id_user'));
        $data['user']=$model->getWhere('user', $where);

        $model->logActivity($user_id, 'View', 'User view Setting.');
               echo view('esensial/header', $data);
               echo view('esensial/menu', $data);
               echo view('admin/setting', $data);
               echo view('esensial/footer');
            } else {
                return redirect()->to('notfound');
            }
           }
           public function aksi_setting()
           {
               $model = new M_lelang();
               $user_id = session()->get('id_user');
               $a = $this->request->getPost('nama');
               $icon = $this->request->getFile('image2');
               $dash = $this->request->getFile('image');

           
               // Debugging: Log received data
               log_message('debug', 'Website Name: ' . $a);
               log_message('debug', 'Tab Icon: ' . ($icon ? $icon->getName() : 'None'));
               log_message('debug', 'Dashboard Icon: ' . ($dash ? $dash->getName() : 'None'));
           
               $data = ['nama_logo' => $a];
               $uploadPath = ROOTPATH . 'public/assets/img/custom/';
           
               if ($icon && $icon->isValid() && !$icon->hasMoved()) {
                   if (!file_exists($uploadPath . $icon->getName())) {
                       $icon->move($uploadPath, $icon->getName());
                   }
                   $data['icon'] = $icon->getName();
               }
           
               if ($dash && $dash->isValid() && !$dash->hasMoved()) {
                   if (!file_exists($uploadPath . $dash->getName())) {
                       $dash->move($uploadPath, $dash->getName());
                   }
                   $data['logos'] = $dash->getName();
               }
           
           
               $where = ['id_logo' => 1];
               $model->logActivity($user_id, 'Updated', 'User Has Updated The Logo');
               $model->edit('logo', $data, $where);
           
               return redirect()->to('setting/1');
           }
		   public function dashboard()
	{
        $user_id = session()->get('id_user');
        $model = new M_lelang();

        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = array_filter($logoData, function($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = reset($filteredLogo);
        $where = array('id_logo' => $id);
        $data['sa'] = $model->getwhere('logo', $where);
        $where=array('id_user'=>session()->get('id_user'));
 $data['user']=$model->getWhere('user', $where);
 
 $model->logActivity($user_id, 'View', 'User view Dashboard.');

 $jumlah_permainan = $model->hitungSemuaPermainan();


 $jumlah_pelanggan = $model->hitungSemuaPelanggan();


 $jumlah_transaksi = $model->hitungTransaksiHariIni();


 $data['jumlah_permainan'] = $jumlah_permainan;
 $data['jumlah_pelanggan'] = $jumlah_pelanggan;
 $data['jumlah_transaksi'] = $jumlah_transaksi;

		echo view ('esensial/header', $data);
		echo view ('esensial/menu', $data);
		echo view('main/dashboard', $data);
		echo view ('esensial/footer');
		
	}
	public function logout() {
        $user_id = session()->get('id_user');

            // Log the logout activity
            $model = new M_lelang();        
            $model->logActivity($user_id, 'Logout', 'User Has Logout.');
        session()->destroy();
        return redirect()->to('http://localhost:8080/home');
    }
	public function activity_log()
{
    $userLevel = session()->get('Level');
    $allowedLevels = ['admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $model= new M_lelang();
        $user_id = session()->get('id_user');
        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = array_filter($logoData, function($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = reset($filteredLogo);
    
        $where=array('id_user'=>session()->get('id_user'));
            $data['user']=$model->getWhere('user', $where);
        $logs = $model->getActivityLogs();
        $data['s'] = $model->tampil('user', 'id_user');
        $data['logs'] = $logs;
        $model->logActivity($user_id, 'View', 'User view Activity Log.');
        echo view('esensial/header');
        echo view('esensial/menu', $data);
        return view('admin/activity_log', $data);
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
}

public function permainan()
{$userLevel = session()->get('Level');
    $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
    $user_id = session()->get('id_user');
    $model = new M_lelang();

    $logoData = $model->tampil('logo'); // Fetch all logos
    $filteredLogo = array_filter($logoData, function($item) {
        return $item->id_logo == 1; // Adjust this condition as needed
    });
    $data['satu'] = reset($filteredLogo);
    $where = array('id_logo' => $id);
    $data['sa'] = $model->getwhere('logo', $where);
    $where=array('id_user'=>session()->get('id_user'));
$data['user']=$model->getWhere('user', $where);
$data['sa'] = $model->tampil('permainan',
'id_permainan');

$model->logActivity($user_id, 'View', 'User view permainan Data.');
echo view('esensial/header');
echo view('esensial/menu', $data);
    echo view('main/permainans/permainan',$data);
    echo view ('esensial/footer');
} else {
    return redirect()->to('http://localhost:8080/home/error_404');
}
}
public function DelPer($id)
{
    $model = new M_lelang();
    $where = ['id_permainan' => $id];
    $isi = array(
            'deleted_at' => date('Y-m-d H:i:s')
        
     );
    $model->logActivity($user_id, 'Delete', 'User Has Remove A Permainan Data');
    $model->edit('permainan',$isi, $where);

    return redirect()->to('permainan');
}
public function UpPer($id)
	{
        $userLevel = session()->get('Level');
        $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();

        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = array_filter($logoData, function($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = reset($filteredLogo);
        $where = array('id_logo' => 1);
        $data['sa'] = $model->getwhere('logo', $where);
        $where=array('id_user'=>session()->get('id_user'));
 $data['user']=$model->getWhere('user', $where);
 $where = array('id_permainan'=> $id);
 $data1['user']=$model->getWhere('permainan', $where);

 $model->logActivity($user_id, 'View', 'User view Update User Data.');
		echo view ('esensial/header', $data);
		echo view ('esensial/menu', $data);
		echo view('main/permainans/UpPer',$data1);
		echo view ('esensial/footer');
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
	}
    public function aksi_UpPer()
	{
        $userLevel = session()->get('Level');
        $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();
        $a = $this->request->getPost('nama');
        $b = $this->request->getPost('harga');
        $id = $this->request->getPost('id');
        $where = array('id_permainan' => $id);
        $isi = array(
            'nama_permainan' => $a,
            'harga_permainan' =>  $b,
            'updated_at' => date('Y-m-d H:i:s')
         );
         $model->edit('permainan', $isi, $where);
 $model->logActivity($user_id, 'Update', 'User Updated Wahana Data.');
 return redirect()->to('permainan');
print_r($isi);
print_r($where);
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
	}
    public function AddPer()
	{
        $userLevel = session()->get('Level');
        $allowedLevels = ['petugas','admin'];
    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();

        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = array_filter($logoData, function($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = reset($filteredLogo);
        $where = array('id_logo' => 1);
        $data['sa'] = $model->getwhere('logo', $where);
        $where=array('id_user'=>session()->get('id_user'));
 $data['user']=$model->getWhere('user', $where);
 $where = array('id_permainan'=> $id);


 $model->logActivity($user_id, 'View', 'User view Update Wahana Data.');
		echo view ('esensial/header', $data);
		echo view ('esensial/menu', $data);
		echo view('main/permainans/AddPer');
		echo view ('esensial/footer');
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
	}
    public function aksi_AddPer()
	{
        $userLevel = session()->get('Level');
        $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();
        $a = $this->request->getPost('nama');
        $b = $this->request->getPost('harga');
        $id = $this->request->getPost('id');
        $where = array('id_permainan' => $id);
        $isi = array(
            'nama_permainan' => $a,
            'harga_permainan' => number_format($b, 2, '.', ''),
            'created_at' => date('Y-m-d H:i:s')
         );
         $model->tambah('permainan', $isi);
 $model->logActivity($user_id, 'ADD', 'User Added Wahana Data.');
 return redirect()->to('permainan');
print_r($isi);
print_r($where);
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
	}
    public function User()
	{$userLevel = session()->get('Level');
        $allowedLevels = ['admin'];
    
        if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();

        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = array_filter($logoData, function($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = reset($filteredLogo);
        $where = array('id_logo' => $id);
        $data['sa'] = $model->getwhere('logo', $where);
        $where=array('id_user'=>session()->get('id_user'));
 $data['user']=$model->getWhere('user', $where);
        $data['sa'] = $model->tampil('user',
        'id_user');

 $model->logActivity($user_id, 'View', 'User view User Data.');
		echo view ('esensial/header', $data);
		echo view ('esensial/menu', $data);
		echo view('main/users/User',$data);
		echo view ('esensial/footer');
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
	}
    public function DelUser($id)
           {
               $model = new M_lelang();
               $where = ['id_user' => $id];
               
               $model->logActivity($user_id, 'Delete', 'User Has Remove A User Data');
               $model->hapus('user',  $where);
           
               return redirect()->to('user');
           }
           public function Aduser()
	{
        $userLevel = session()->get('Level');
    $allowedLevels = ['admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();

        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = array_filter($logoData, function($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = reset($filteredLogo);
        $where = array('id_logo' => $id);
        $data['sa'] = $model->getwhere('logo', $where);
        $where=array('id_user'=>session()->get('id_user'));
 $data['user']=$model->getWhere('user', $where);

       

 $model->logActivity($user_id, 'View', 'User view Add Student Data.');
 echo view ('esensial/header', $data);
 echo view ('esensial/menu', $data);
		echo view('main/users/Aduser',$data);
        echo view ('esensial/footer');
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
	}
    public function aksi_Aduser()
	{
        $userLevel = session()->get('Level');
    $allowedLevels = ['admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();
        $a = $this->request->getPost('nama');
        $b = $this->request->getPost('Nik');
        $e = $this->request->getPost('angkatan');
        $c = $this->request->getPost('password');
        $isi = array(
            'real' => $a,
            'user' =>  $b,
            'password' => $c,
            'Level' => $e
         );
         $model->tambah('user', $isi);
 $model->logActivity($user_id, 'Add', 'User Add user Data.');
 return redirect()->to('user');
print_r($isi);
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
	}
    public function UpUser($id)
	{
        $userLevel = session()->get('Level');
    $allowedLevels = ['admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();

        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = array_filter($logoData, function($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = reset($filteredLogo);
        $where = array('id_logo' => 1);
        $data['sa'] = $model->getwhere('logo', $where);
        $where=array('id_user'=>session()->get('id_user'));
 $data['user']=$model->getWhere('user', $where);
 $where = array('id_user'=> $id);
 $data1['user']=$model->getWhere('user', $where);

 $model->logActivity($user_id, 'View', 'User view Update User Data.');
 echo view ('esensial/header', $data);
 echo view ('esensial/menu', $data);
		echo view('main/users/UpUser',$data1);
        echo view ('esensial/footer');
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
	}
    public function aksi_UpUser()
	{
        $userLevel = session()->get('Level');
    $allowedLevels = ['admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();
        $a = $this->request->getPost('nama');
        $b = $this->request->getPost('Nik');
        $c = $this->request->getPost('password');
        $e = $this->request->getPost('angkatan');
        $id = $this->request->getPost('id');
        $where = array('id_user' => $id);
        $isi = array(
            'real' => $a,
            'user' =>  $b,
            'password' => $c,
            'Level' => $e
         );
         $model->edit('user', $isi, $where);
 $model->logActivity($user_id, 'Update', 'User Updated User Data.');
 return redirect()->to('user');
print_r($isi);
print_r($where);
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
	}
    public function pelanggan()
{$userLevel = session()->get('Level');
    $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
    $user_id = session()->get('id_user');
    $model = new M_lelang();

    $logoData = $model->tampil('logo'); // Fetch all logos
    $filteredLogo = array_filter($logoData, function($item) {
        return $item->id_logo == 1; // Adjust this condition as needed
    });
    $data['satu'] = reset($filteredLogo);
    $where = array('id_logo' => $id);
    $data['sa'] = $model->getwhere('logo', $where);
    $where=array('id_user'=>session()->get('id_user'));
$data['user']=$model->getWhere('user', $where);
$data['sa'] = $model->tampil('pelanggan',
'PelangganID');

$model->logActivity($user_id, 'View', 'User view Pelanggan Data.');
echo view('esensial/header');
echo view('esensial/menu', $data);
    echo view('main/pelanggan/pelanggan',$data);
    echo view ('esensial/footer');
} else {
    return redirect()->to('http://localhost:8080/home/error_404');
}
}
public function DelPe($id)
{
    $model = new M_lelang();
    $where = ['PelangganID' => $id];
    $isi = array(
            'deleted_at' => date('Y-m-d H:i:s')
        
     );
    $model->logActivity($user_id, 'Delete', 'User Has Remove A Pelanggan Data');
    $model->edit('pelanggan',$isi, $where);

    return redirect()->to('pelanggan');
}
public function UpPe($id)
	{
        $userLevel = session()->get('Level');
        $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();

        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = array_filter($logoData, function($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = reset($filteredLogo);
        $where = array('id_logo' => 1);
        $data['sa'] = $model->getwhere('logo', $where);
        $where=array('id_user'=>session()->get('id_user'));
 $data['user']=$model->getWhere('user', $where);
 $where = array('PelangganID'=> $id);
 $data1['user']=$model->getWhere('pelanggan', $where);

 $model->logActivity($user_id, 'View', 'User view Update Pelanggan Data.');
		echo view ('esensial/header', $data);
		echo view ('esensial/menu', $data);
		echo view('main/pelanggan/UpPe',$data1);
		echo view ('esensial/footer');
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
	}
    public function aksi_UpPe()
	{
        $userLevel = session()->get('Level');
        $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();
        $a = $this->request->getPost('nama');
        $b = $this->request->getPost('ortu');
        $c = $this->request->getPost('alamat');
        $d = $this->request->getPost('wa');
        $id = $this->request->getPost('id');
        $where = array('PelangganID' => $id);
        $isi = array(
            'NamaPelanggan' => $a,
            'NamaOrangtua' => $b,
            'Alamat' => $c,
            'NomorTelepon' => $d,
            'updated_at' => date('Y-m-d H:i:s')
         );
         $model->edit('pelanggan', $isi, $where);
 $model->logActivity($user_id, 'Update', 'User Updated Pelanggan Data.');
 return redirect()->to('Pelanggan');
print_r($isi);
print_r($where);
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
	}
    public function AddPe()
	{
        $userLevel = session()->get('Level');
        $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();

        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = array_filter($logoData, function($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = reset($filteredLogo);
        $where = array('id_logo' => 1);
        $data['sa'] = $model->getwhere('logo', $where);
        $where=array('id_user'=>session()->get('id_user'));
 $data['user']=$model->getWhere('user', $where);
 $where = array('id_permainan'=> $id);


 $model->logActivity($user_id, 'View', 'User view Update Pelanggan Data.');
		echo view ('esensial/header', $data);
		echo view ('esensial/menu', $data);
		echo view('main/pelanggan/AddPe');
		echo view ('esensial/footer');
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
	}
    public function aksi_AddPe()
{
    $userLevel = session()->get('Level');
    $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();
        $a = $this->request->getPost('nama');
        $b = $this->request->getPost('ortu');
        $c = $this->request->getPost('alamat');
        $d = $this->request->getPost('wa');
        $id = $this->request->getPost('id');
        $where = array('id_permainan' => $id);

        // Fungsi untuk membuat KodePelanggan
        function generateKodePelanggan()
        {
            $prefix = "PLG";
            $letters = strtoupper(substr(str_shuffle("ABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, 2));
            $numbers = str_pad(mt_rand(0, 99), 2, '0', STR_PAD_LEFT);
            return $prefix . $letters . $numbers;
        }

        $isi = array(
            'KodePelanggan' => generateKodePelanggan(), // Kode pelanggan otomatis
            'NamaPelanggan' => $a,
            'NamaOrangtua' => $b,
            'Alamat' => $c,
            'NomorTelepon' => $d,
            'created_at' => date('Y-m-d H:i:s')
        );

        $model->tambah('pelanggan', $isi);
        $model->logActivity($user_id, 'ADD', 'User Added Pelanggan Data.');
        
        // Untuk debug data yang dikirim
        print_r($isi);
        print_r($where);
        
        return redirect()->to('pelanggan');
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
}
public function Pajak()
           {
            $userLevel = session()->get('Level');
            $allowedLevels = ['admin'];
            $user_id = session()->get('id_user');
            if (in_array($userLevel, $allowedLevels)) {
               $model = new M_lelang();

               $logoData = $model->tampil('logo'); // Fetch all logos
               $filteredLogo = array_filter($logoData, function($item) {
                   return $item->id_logo == 1; // Adjust this condition as needed
               });
               $data['satu'] = reset($filteredLogo);
               $where = array('id_logo' => $id);
               $data['sa'] = $model->getwhere('logo', $where);
               $where=array('id_user'=>session()->get('id_user'));
        $data['user']=$model->getWhere('user', $where);
        $where=array('id_pajak'=> '1');
        $data1['user']=$model->getWhere('pajak', $where);

        $model->logActivity($user_id, 'View', 'User view Setting.');
               echo view('esensial/header', $data);
               echo view('esensial/menu', $data);
               echo view('Pajak', $data1);
               echo view('esensial/footer');
            } else {
                return redirect()->to('notfound');
            }
           }
           public function aksi_pajak()
{
    $model = new M_lelang();
    $nama = $this->request->getPost('nama');
    $persen = $this->request->getPost('persen');
        $where = array('id_pajak' => '1');
    $isi = array(
        'nama_pajak' => $nama,
        'persen_pajak' => $persen,
            'updated_at' => date('Y-m-d H:i:s')
        
     );
    $model->logActivity($user_id, 'Delete', 'User Has Updated the pajak Persen');
    $model->edit('pajak',$isi, $where);

    return redirect()->to('pajak/1');
}
public function transaksi()
{$userLevel = session()->get('Level');
    $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
    $user_id = session()->get('id_user');
    $model = new M_lelang();
    $logoData = $model->tampil('logo'); // Fetch all logos
    $filteredLogo = array_filter($logoData, function($item) {
        return $item->id_logo == 1; // Adjust this condition as needed
    });
    $data['satu'] = reset($filteredLogo);
    $where = array('id_logo' => $id);
    $data['sa'] = $model->getwhere('logo', $where);
    $where=array('id_user'=>session()->get('id_user'));
$data['user']=$model->getWhere('user', $where);
$data['sa'] = $model->joinThreeTables('transaksi','pelanggan','user',
'transaksi.pelanggan_id=pelanggan.PelangganID',
'transaksi.user=user.id_user',
);

$model->logActivity($user_id, 'View', 'User view Pelanggan Data.');
echo view('esensial/header');
echo view('esensial/menu', $data);
    echo view('main/transaksis/transaksi',$data);
    echo view ('esensial/footer');
} else {
    return redirect()->to('http://localhost:8080/home/error_404');
}
}

public function DelTrans($id)
{
    $model = new M_lelang();
    $where = ['id_transaksi' => $id];
    $isi = array(
            'deleted_ats' => date('Y-m-d H:i:s')
        
     );
    $model->logActivity($user_id, 'Delete', 'User Has Remove A Transaction Data');
    $model->edit('transaksi',$isi, $where);
print_r($isi);
print_r($where);
    return redirect()->to('transaksi');
}
public function kasir()
{$userLevel = session()->get('Level');
    $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
    $user_id = session()->get('id_user');
    $model = new M_lelang();
    $logoData = $model->tampil('logo'); // Fetch all logos
    $filteredLogo = array_filter($logoData, function($item) {
        return $item->id_logo == 1; // Adjust this condition as needed
    });
    $data['satu'] = reset($filteredLogo);
    $where = array('id_logo' => $id);
    $data['sa'] = $model->getwhere('logo', $where);
    $where=array('id_user'=>session()->get('id_user'));
$data['user']=$model->getWhere('user', $where);
$data['sa'] = $model->joinThreeTables('transaksi','pelanggan','user',
'transaksi.pelanggan_id=pelanggan.PelangganID',
'transaksi.user=user.id_user',
);
$data['t'] = $model->tampil('permainan',
'id_permainan');
$data['s'] = $model->tampil('paket_permainan',
'id_paket');
$data['pajak'] = $model->tampil('pajak',
'id_pajak');
$data['pelanggan_list'] = $model->tampil('pelanggan',
'PelangganID');
$model->logActivity($user_id, 'View', 'User view Pelanggan Data.');
echo view('esensial/header');
echo view('esensial/menu', $data);
    echo view('main/Kasir/view',$data);
    echo view ('esensial/footer');
} else {
    return redirect()->to('http://localhost:8080/home/error_404');
}
}
public function aksi_create()
{
    $userLevel = session()->get('Level');
    $allowedLevels = ['petugas', 'admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();

        $a = $this->request->getPost('permainan');
        $b = $this->request->getPost('tanggal');
        $c = $this->request->getPost('pelanggan');
        $d = $this->request->getPost('durasi');
        $e = $this->request->getPost('total');
        $f = $this->request->getPost('bayar');
        $g = $this->request->getPost('kembalian');


        // Get current time for jam_mulai
        $jamMulai = date(' H:i:s');

        // Calculate jam_selesai based on durasi (duration)
        $jamSelesai = date(' H:i:s', strtotime($jamMulai . ' + ' . $d . ' hours'));

        // Data to insert into the database
        $isi = array(
            'pelanggan_id' => $c,
            'tanggal_transaksi' => date('Y-m-d'),
            'jam_mulai' => $jamMulai,
            'jam_selesai' => $jamSelesai,
            'pajak_id' => '1',
            'total_harga' => $e,
            'bayar' => $f,
            'kembalian' => $g,
            'user' => $user_id,
            'status' => '1',
            'created_at' => date('Y-m-d H:i:s')
        );
        $model->tambah('transaksi', $isi);
        $model->logActivity($user_id, 'ADD', 'User Added transaksi Data.');
        
        // Untuk debug data yang dikirim
        print_r($isi);
        print_r($where);
        
        return redirect()->to('transaksi');
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
}
public function aktivitas()
    {
        {$userLevel = session()->get('Level');
            $allowedLevels = ['petugas','admin'];
        
            if (in_array($userLevel, $allowedLevels)) {
            $user_id = session()->get('id_user');
            $model = new M_lelang();
            $logoData = $model->tampil('logo'); // Fetch all logos
            $filteredLogo = array_filter($logoData, function($item) {
                return $item->id_logo == 1; // Adjust this condition as needed
            });
            $data['satu'] = reset($filteredLogo);
            $where = array('id_logo' => $id);
            $data['sa'] = $model->getwhere('logo', $where);
            $where=array('id_user'=>session()->get('id_user'));
        $data['user']=$model->getWhere('user', $where);
            

        $data['sa'] = $model->joinThreeTables('transaksi','pelanggan','user',
'transaksi.pelanggan_id=pelanggan.PelangganID',
'transaksi.user=user.id_user',
);

            echo view('esensial/header', $data);
            // echo view('esensial/menu', $data);
            echo view('main/aktivitas', $data);
            echo view('esensial/footer');
        } else {
            return redirect()->to('/');
        }
    }
}
public function status($id)
{
    $model = new M_lelang();

    $where = ['id_transaksi' => $id];
    $isi = array(
            'status' => '2'
        
     );

    $model->edit('transaksi',$isi, $where);
print_r($isi);
print_r($where);
    return redirect()->to('aktivitas');
}
	}


