<?
require APPPATH . '/libraries/REST_Controller.php';

class ider_user extends REST_Controller {

    // show data pembelian
    function login_get() {
        $get_transaksi = $this->db->query("Select * from user")->result();
        $this->response(array("status"=>"success","result" => $get_transaksi));
    }

    function login_post() {
    	$action  = $this->post('action');
		$data_pembeli = array(
	                'nama' 		=> $this->post('nama'),
	                'password'  => $this->post('password'));

		if (empty($data_pembeli['nama'])){
			$this->response(array("status"=>"failed", "message" => "nama harus diisi","result"=>""));		
		}
		else if (empty($data_pembeli['password'])){
			$this->response(array("status"=>"failed", "message" => "password harus diisi","result"=>""));		
		}
		//query
		$result = $this->db->query("Select * from user where nama ='".$data_pembeli['nama']."' and password='".$data_pembeli['password']."'")->result();
		if (empty($result)){
			$this->response(array("status"=>"failed", "message" => "login gagal","result"=>""));		
		}else{
			$this->response(array("status"=>"success", "message" => "","result"=>$result));		
		}
    }
}