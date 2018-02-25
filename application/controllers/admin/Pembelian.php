<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pembelian extends CI_Controller {

    function __construct(){
        parent::__construct();
        $this->load->model('admin/Admin_m');
    }
    public function index($offset=0){
        if ($this->ion_auth->logged_in()) {
            $level = array('admin','members');
            if (!$this->ion_auth->in_group($level)) {
                $pesan = 'Anda tidak memiliki Hak untuk Mengakses halaman ini';
                $this->session->set_flashdata('message', $pesan );
                redirect(base_url('index.php/admin/dashboard'));
            }else{
                $post = $this->input->get();
                $data['title'] = 'Pembelian - '.$this->Admin_m->info_pt(1)->nama_info_pt;
                $data['infopt'] = $this->Admin_m->info_pt(1);
                $data['brand'] = 'asset/img/lembaga/'.$this->Admin_m->info_pt(1)->logo_pt;
                $data['users'] = $this->ion_auth->user()->row();
                $data['aside'] = 'nav/nav';
                $data['hasil'] = $this->Admin_m->list_pembelian_hari_ini(date('Y-m-d'));
                $data['page'] = 'admin/pembelian-v';
                // pagging setting
                $this->load->view('admin/dashboard-v',$data);
            }
        }else{
            $pesan = 'Login terlebih dahulu';
            $this->session->set_flashdata('message', $pesan );
            redirect(base_url('index.php/login'));
        }
    }
    public function create($tgl){
        if ($this->ion_auth->logged_in()) {
            $level = array('admin','members');
            if (!$this->ion_auth->in_group($level)) {
                $pesan = 'Anda tidak memiliki Hak untuk Mengakses halaman ini';
                $this->session->set_flashdata('message', $pesan );
                redirect(base_url('index.php/admin/dashboard'));
            }else{
                $data = array(
                    'tgl_nota' => $tgl,
                    'jam_nota' =>date('H:i:s'),
                    'id_user' => $this->ion_auth->user()->row()->id,
                    'id_status' => 1
                );
                $this->Admin_m->create('nota',$data);

                $cektgl = $this->Admin_m->detail_data('tanggal','kode',$tgl);
                if (empty($cektgl)) {
                    $dttgl = array('kode' => $tgl);
                    $this->Admin_m->create('tanggal',$dttgl);
                }
                $cektahun = $this->Admin_m->detail_data('tahun','kode_tahun',date('Y'));
                if (empty($cektahun)) {
                    $dtthn = array('kode_tahun' => date('Y'));
                    $this->Admin_m->create('tahun',$dtthn);
                }
                $lastid = $this->Admin_m->lastid('nota','id_nota')->id_nota;
                $pesan = 'Nota Baru Berhasil dibuat';
                $this->session->set_flashdata('message', $pesan );
                redirect(base_url('index.php/admin/pembelian/nota/'.$lastid));
            }
        }else{
            $pesan = 'Login terlebih dahulu';
            $this->session->set_flashdata('message', $pesan );
            redirect(base_url('index.php/login'));
        }
    }
    public function nota($nota){
        if ($this->ion_auth->logged_in()) {
            $level = array('admin','members');
            if (!$this->ion_auth->in_group($level)) {
                $pesan = 'Anda tidak memiliki Hak untuk Mengakses halaman ini';
                $this->session->set_flashdata('message', $pesan );
                redirect(base_url('index.php/admin/dashboard'));
            }else{
                $post = $this->input->post();
                $data['title'] = 'Pembelian - '.$nota;
                $data['infopt'] = $this->Admin_m->info_pt(1);
                $data['brand'] = 'asset/img/lembaga/'.$this->Admin_m->info_pt(1)->logo_pt;
                $data['users'] = $this->ion_auth->user()->row();
                $data['aside'] = 'nav/nav';
                $config['base_url'] = base_url('index.php/admin/pembelian/nota/'.$nota.'/');
                $config['total_rows'] = $this->Admin_m->count_data_menu(@$post['string']); //total row
                $config['per_page'] = 10;  //show record per halaman
                $config["uri_segment"] = 5;  // uri parameter
                $config['first_link']       = 'Pertama';
                $config['last_link']        = 'Terakhir';
                $config['next_link']        = 'Selanjutnya';
                $config['prev_link']        = 'Sebelumnya';
                $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
                $config['full_tag_close']   = '</ul></nav></div>';
                $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
                $config['num_tag_close']    = '</span></li>';
                $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
                $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
                $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
                $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
                $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
                $config['prev_tagl_close']  = '</span>Next</li>';
                $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
                $config['first_tagl_close'] = '</span></li>';
                $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
                $config['last_tagl_close']  = '</span></li>';
                $this->pagination->initialize($config);
                $data['offset'] = ($this->uri->segment(5)) ? $this->uri->segment(5) : 0;
                $data['detnota'] = $this->Admin_m->detail_data_nota($nota);
                $data['menu'] = $this->Admin_m->select_all_data_menu($config["per_page"], $data['offset'],@$post['string']);
                $data['beli'] = $this->Admin_m->list_data_beli($nota);
                $data['pagination'] = $this->pagination->create_links();
                $data['page'] = 'admin/nota-v';
                // pagging setting
                $this->load->view('admin/dashboard-v',$data);
            }
        }else{
            $pesan = 'Login terlebih dahulu';
            $this->session->set_flashdata('message', $pesan );
            redirect(base_url('index.php/login'));
        }
    }
    public function input_menu($tanggal){
        if ($this->ion_auth->logged_in()) {
            $level = array('admin','members');
            if (!$this->ion_auth->in_group($level)) {
                $pesan = 'Anda tidak memiliki Hak untuk Mengakses halaman ini';
                $this->session->set_flashdata('message', $pesan );
                redirect(base_url('index.php/admin/dashboard'));
            }else{
                $post=$this->input->post();
                $detail = $this->Admin_m->detail_data_order('menu','id_menu',$post['id_menu']);
                if ($detail->diskon !== '0') {
                    $hargadiskon = $detail->harga_satuan*$detail->diskon/100;
                    $harusbayar = $detail->harga_satuan-$hargadiskon;
                }else{
                    $harusbayar = $detail->harga_satuan;
                }
                $data = array(
                    'id_nota' =>$post['id_nota'],
                    'id_menu' =>$post['id_menu'],
                    'jml_menu' =>1,
                    'tgl_bayar' =>$tanggal,
                    'total_bayar' =>$harusbayar,
                    'id_status' =>1
                );
                $this->Admin_m->create('menu_to_nota',$data);
                $updatestrok = array('stok' =>$detail->stok-1);
                $this->Admin_m->update('menu','id_menu',$post['id_menu'],$updatestrok);
                $pesan = 'Menu '.$detail->nama_menu.' Berhasil ditambahkan';
                $this->session->set_flashdata('message', $pesan );
                redirect(base_url('index.php/admin/pembelian/nota/'.$post['id_nota']));
            }
        }else{
            $pesan = 'Login terlebih dahulu';
            $this->session->set_flashdata('message', $pesan );
            redirect(base_url('index.php/login'));
        }
    }
    public function update_menu_nota($id){
        if ($this->ion_auth->logged_in()) {
            $level = array('admin','members');
            if (!$this->ion_auth->in_group($level)) {
                $pesan = 'Anda tidak memiliki Hak untuk Mengakses halaman ini';
                $this->session->set_flashdata('message', $pesan );
                redirect(base_url('index.php/admin/dashboard'));
            }else{
                $post=$this->input->post();
                $detail = $this->Admin_m->detail_data_order('menu_to_nota','id_menu_to_nota',$id);
                $menu = $this->Admin_m->detail_data_order('menu','id_menu',$detail->id_menu);
                if ($menu->diskon !== '0') {
                    $hargadiskon = $menu->harga_satuan*$menu->diskon/100;
                    $harusbayar = $menu->harga_satuan-$hargadiskon;
                }else{
                    $harusbayar = $menu->harga_satuan;
                }
                $data = array(
                    'jml_menu' =>$post['jml_menu'],
                    'total_bayar' =>$post['jml_menu']*$harusbayar,
                );
                $this->Admin_m->update('menu_to_nota','id_menu_to_nota',$id,$data);

                $updatestrok = array('stok' =>($menu->stok+$detail->jml_menu)-$post['jml_menu']);
                $this->Admin_m->update('menu','id_menu',$detail->id_menu,$updatestrok);

                $pesan = 'Jumlah barang menu '.$menu->nama_menu.' ditambahkan menjadi '.$post['jml_menu'];
                $this->session->set_flashdata('message', $pesan );
                redirect(base_url('index.php/admin/pembelian/nota/'.$detail->id_nota));
            }
        }else{
            $pesan = 'Login terlebih dahulu';
            $this->session->set_flashdata('message', $pesan );
            redirect(base_url('index.php/login'));
        }
    }
    public function delete_nota($nota){
        $cek = $this->Admin_m->select_all_data_order('menu_to_nota','id_nota',$nota);
        if ($cek == TRUE) {
            foreach ($cek as $data) {
                $detail = $this->Admin_m->detail_data_order('menu_to_nota','id_menu_to_nota',$data->id_menu_to_nota);
                $menu = $this->Admin_m->detail_data_order('menu','id_menu',$detail->id_menu);
                $updatestrok = array('stok' =>($menu->stok+$detail->jml_menu));
                $this->Admin_m->update('menu','id_menu',$detail->id_menu,$updatestrok);
                $this->Admin_m->delete('menu_to_nota','id_menu_to_nota',$data->id_menu_to_nota);
            }
            $this->Admin_m->delete('nota','id_nota',$nota);  
        }else{
            $this->Admin_m->delete('nota','id_nota',$nota);  
        }
        $pesan = 'Nota berhasil dihapus';
        $this->session->set_flashdata('message', $pesan );
        redirect(base_url('index.php/admin/pembelian'));
    }
    public function delete_order($nota,$id){
        $detail = $this->Admin_m->detail_data_order('menu_to_nota','id_menu_to_nota',$id);
        $menu = $this->Admin_m->detail_data_order('menu','id_menu',$detail->id_menu);
        $updatestrok = array('stok' =>($menu->stok+$detail->jml_menu));
        $this->Admin_m->update('menu','id_menu',$detail->id_menu,$updatestrok);
        $this->Admin_m->delete('menu_to_nota','id_menu_to_nota',$id);
        $pesan = 'Order berhasil dihapus';
        $this->session->set_flashdata('message', $pesan );
        redirect(base_url('index.php/admin/pembelian/nota/'.$nota));
    }
    public function bayar($nota,$total){
        $detail = $this->Admin_m->detail_data_order('nota','id_nota',$nota);
        $daftar_menu = $this->Admin_m->select_all_data_order('menu_to_nota','id_nota',$nota);
        foreach ($daftar_menu as $menu) {
            $data = array('id_status'=>2);
            $this->Admin_m->update('menu_to_nota','id_menu_to_nota',$menu->id_menu_to_nota,$data);
        }
        $notanya = array(
            'id_status' =>2,
            'total_bayar_nota' => $total,
            'jumlah_bayar' => $this->input->post('jumlah_bayar'),
            'kembalian' => $this->input->post('jumlah_bayar') - $total,
        );
        $this->Admin_m->update('nota','id_nota',$nota,$notanya);

        $tanggal = $this->Admin_m->detail_data_order('tanggal','kode',$detail->tgl_nota);
        $hasil_hari_ini = array('total' => $tanggal->total+$total,);
        $this->Admin_m->update('tanggal','id_tanggal',$tanggal->id_tanggal,$hasil_hari_ini);

        $this->session->set_flashdata('message', $pesan );
        redirect(base_url('index.php/admin/pembelian/nota/'.$nota));
    }
}
?>