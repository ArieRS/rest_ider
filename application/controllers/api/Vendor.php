<?php
/**
 * Created by PhpStorm.
 * User: yunhasnawa
 * Date: 12/03/17
 * Time: 2.30 AM
 */

require APPPATH . '/libraries/REST_Controller.php';

class Vendor extends REST_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function vendors_get()
    {
        $vendors = $this->db->query('SELECT * FROM pedagang')->result();

        $this->response($vendors, REST_Controller::HTTP_OK);
    }

    public function commodities_get()
    {
        $vendorId = $this->get('vendor_id');

        $sql = "SELECT * FROM detail_item WHERE id_pedagang = '$vendorId'";

        $commodities = $this->db->query($sql)->result();

        $this->response($commodities, REST_Controller::HTTP_OK);
    }
}