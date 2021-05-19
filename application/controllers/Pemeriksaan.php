<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pemeriksaan extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Pemeriksaan_model');
    }

    public function index ()
    {
        $data['title'] = 'Isi Identitas Anak';
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        
        $this->form_validation->set_rules('nama', 'Nama', 'required|trim', [
            'required' => 'Nama harus diisi.'
        ]);
        $this->form_validation->set_rules('umur', 'Umur', 'required|trim', [
            'required' => 'Umur harus diisi.'
        ]);
        $this->form_validation->set_rules('gender', 'Jenis Kelamin', 'required', [
            'required' => 'Pilih jenis kelamin.'
        ]);
        $this->form_validation->set_rules('nama_ortu', 'Nama orang tua', 'required|trim', [
            'required' => 'Nama orang tua harus diisi.'
        ]);

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar');
            $this->load->view('templates/topbar', $data);
            $this->load->view('pemeriksaan/isi_identitas');
            $this->load->view('templates/footer');
        } else {
            //validasi berhasil
            $data = [
                'nama' => htmlspecialchars($this->input->post('nama', true)),
                'umur' => htmlspecialchars($this->input->post('umur', true)),
                'gender' => htmlspecialchars($this->input->post('gender', true)),
                'nama_ortu' => htmlspecialchars($this->input->post('nama_ortu', true)),
            ];
            $this->Pemeriksaan_model->addAnak($data);
            redirect('pemeriksaan/tes_ddst');
        }
    }

    public function tes_ddst ()
    {
        $data['title'] = 'Denver Developmental Screening Test';
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $data['anak'] = $this->Pemeriksaan_model->getDataAnak();
        $data['listsektor'] = $this->Pemeriksaan_model->getListSektor();
        $data['listsoal'] = $this->Pemeriksaan_model->getSoal($data['anak']['umur']);

        if (!isset($_POST["submit-test"])) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar');
            $this->load->view('templates/topbar', $data);
            $this->load->view('pemeriksaan/tes_ddst', $data);
            $this->load->view('templates/footer');
        } else {
            $F = 0;
            $R = 0;
            foreach($_POST as $hasil){ 
                if($hasil == 'F') $F++;
                else if($hasil == 'R') $R++;
            }
            
            if ($F <= 1 && $R <= 1) $keputusan = 1;
            else if ($F > 1 && $R <= 1) $keputusan = 2;
            else $keputusan = 3;
            
            $datahasil = [
                'anak_id' => $data['anak']['id'],
                'hasil_id' => $keputusan,
                'pemeriksa_id' => $data['user']['id'],
                'tgl_tes' => time()
            ];
            $this->Pemeriksaan_model->addDataHasil($datahasil);
            redirect('pemeriksaan/hasiltes');    
        }
    }

    public function hasiltes()
    {
        $data['title'] = 'Hasil Tes DDST';
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $data['hasil'] = $this->Pemeriksaan_model->getHasilTesAnak();
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar');
        $this->load->view('templates/topbar', $data);
        $this->load->view('pemeriksaan/hasiltes', $data);
        $this->load->view('templates/footer');

    }

    public function histori()
    {
        $data['title'] = 'Histori Tes';
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $data['listhasil'] = $this->Pemeriksaan_model->getListHasil();
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar');
        $this->load->view('templates/topbar', $data);
        $this->load->view('pemeriksaan/histori');
        $this->load->view('templates/footer');
    }

    public function historidelete($hasil_id)
    {
        $this->Pemeriksaan_model->deleteHistori($hasil_id);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Histori berhasil dihapus.</div>');
        redirect('pemeriksaan/histori');
    }
}