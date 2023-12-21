<?php
class transaksi extends CI_controller{
    function __construct() {
    parent::__construct();
    $this->load->model(array('model_barang','model_transaksi'));
    }

    function index()
    {
    if(isset($_POST['submit']))
    {
    $this->model_transaksi->simpan_barang();
    redirect('transaksi');
    }
    else
    {
    $data['barang']= $this->model_barang->tampil_data();
    $data['detail']= $this->model_transaksi->tampilkan_detail_transaksi()->result();
    $this->load->view('form_transaksi',$data);
    }
    }


    function hapusitem()
    {
    $id= $this->uri->segment(3);
    $this->model_transaksi->hapusitem($id);
    redirect('transaksi');
    }


    function selesai_belanja()
    {
    $tanggal=date('Y-m-d');
 //$user= $this->session->userdata('username');
 //$id_op= $this->db->get_where('operator',array('username'=>$user))->row_array();
    $data=array('operator_id'=>'3','tanggal_transaksi'=>$tanggal);
    $this->model_transaksi->selesai_belanja($data);
    redirect('transaksi');
 }



}