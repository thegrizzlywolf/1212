<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pelanggan extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Pelanggan_model');
        $this->load->helper('url');
    }

    public function index()
    {
        $data['pelanggan'] = $this->Pelanggan_model->getAll();
        $this->load->view('pelanggan/index', $data);
    }

    public function create()
    {
        $this->load->view('pelanggan/create');
        
    }

    public function store()
    {
        $this->Pelanggan_model->save($this->input->post());
        redirect(base_url('index.php/pelanggan'));
    }

    public function edit($id)
    {
        $data['pelanggan'] = $this->Pelanggan_model->getById($id);
        $this->load->view('pelanggan/edit', $data);
    }

    public function update($id)
    {
        $this->Pelanggan_model->update($id, $this->input->post());
        redirect(base_url('index.php/pelanggan'));
    }

    public function delete($id)
    {
        $this->Pelanggan_model->delete($id);
        redirect(base_url('index.php/pelanggan'));
    }
}