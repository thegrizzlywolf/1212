<?php
class model_transaksi extends ci_model
{


    function simpan_barang()
    {
    $nama_barang = $this->input->post('barang');
    $qty = $this->input->post('qty');
    $idbarang = $this->db->get_where('barang',array('nama_barang'=>$nama_barang))->row_array();
    $data = array('barang_id'=>$idbarang['barang_id'],'qty'=>$qty,'harga'=>$idbarang['harga'],'status'=>'0');
    $this->db->insert('transaksi_detail',$data);
    }

    function tampilkan_detail_transaksi()
    {
    $query ="SELECT td.t_detail_id,td.qty,td.harga,b.nama_barang
    FROM transaksi_detail as td,barang as b
    WHERE b.barang_id=td.barang_id and td.status='0'";
    return $this->db->query($query);
    }

    function hapusitem($id)
    {
    $this->db->where('t_detail_id',$id);
    $this->db->delete('transaksi_detail');
    }


    function selesai_belanja($data)
    {
    $this->db->insert('transaksi',$data);
    $last_id= $this->db->query("select transaksi_id from transaksi order by transaksi_id desc")->row_array();
    $this->db->query("update transaksi_detail set transaksi_id='".$last_id['transaksi_id']."'where status='0'");
    $this->db->query("update transaksi_detail set status='1' where status='0'");
 }

}