<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pelanggan_model extends CI_Model {

    public function getAll()
    {
        return $this->db->get('pelanggan')->result();
    }

    public function getById($id)
    {
        return $this->db->get_where('pelanggan', ['id_pelanggan' => $id])->row();
    }

    public function save($data)
    {
        $this->db->insert('pelanggan', $data);
    }

    public function update($id, $data)
    {
        $this->db->update('pelanggan', $data, ['id_pelanggan' => $id]);
    }

    public function delete($id)
    {
        $this->db->delete('pelanggan', ['id_pelanggan' => $id]);
    }
}