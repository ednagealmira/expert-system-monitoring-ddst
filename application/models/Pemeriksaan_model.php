<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Pemeriksaan_model extends CI_Model
{
    public function addAnak($data)
    {
        $this->db->insert('data_anak', $data);
    }

    public function getDataAnak()
    {
        $this->db->select_max('id');
        $max_data = $this->db->get('data_anak')->row_array();
        return $this->db->get_where('data_anak', ['id' => $max_data['id']])->row_array();
    }

    public function getListSektor()
    {
        return $this->db->get('sektor')->result_array();
    }

    public function getSoal($umur)
    {
        return $this->db->get_where('soal_full_main', ['umur' => $umur])->result_array();
    }

    public function addDataHasil($data)
    {
        $this->db->insert('data_hasil', $data);
    }

    public function getHasilTesAnak($anakid)
    {
        return $this->db->get_where('data_hasil', ['anak_id' => $anakid])->row_array();
    }
}