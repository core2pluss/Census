<?php  
 class Crud_model extends CI_Model  
 {  
      function __construct(){
        $this->table = 'headoffamily';
        $this->column_order = array('ID','FirstName', 'HFCNIC', 'FatherFirstName', 'MainArea','Address1','FormStatusFlag');
        $this->column_search = array(null, 'FirstName', 'HFCNIC', 'FatherFirstName', 'MainArea','Address1','FormStatusFlag'
      );

        $this->order = array('FirstName'=> 'asc');
      }

var $order = array('id' => 'desc');
 /*
     * Fetch members data from the database
     * @param $_POST filter data based on the posted parameters
     */
     function GetRows(){
        $this->_get_datatables_query();
        if($_POST["length"] != -1){
            $this->db->limit($_POST["length"], $_POST["start"]);
        }
        $query = $this->db->get();
        return $query->result();
    }
    
    /*
     * Count all records
     */
    function countAll(){
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }
    
    /*
     * Count records based on the filter params
     * @param $_POST filter data based on the posted parameters
     */
     function countFiltered(){
        $this->_get_datatables_query();
        $query = $this->db->get();
        return $query->num_rows();
    }
    
    /*
     * Perform the SQL queries needed for an server-side processing requested
     * @param $_POST filter data based on the posted parameters
     */
     function _get_datatables_query(){
         $this->db->select($this->column_order);
        $this->db->from($this->table);
 
        $i = 0;
        // loop searchable columns 
        foreach($this->column_search as $item){
            // if datatable send POST for search
            if(isset($_POST["search"]["value"])){
                // first loop
                if($i===0){
                    // open bracket
                    $this->db->group_start();
                    $this->db->like($item, $_POST["search"]["value"]);
                }else{
                    $this->db->or_like($item, $_POST["search"]["value"]);
                }
                
                // last loop
                if(count($this->column_search) - 1 == $i){
                    // close bracket
                    $this->db->group_end();
                }
            }
            if(isset($_POST['order'])){
                $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
            }
            else
            {
              $this->db->order_by('id', 'DESC'); 
            }
        }
    }
}

