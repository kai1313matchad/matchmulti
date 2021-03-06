<?php
	defined('BASEPATH') OR exit('No direct script access allowed');
	class Dt_showrptpo extends CI_Model 
	{
		var $table = 'trx_po a';
		var $column_order = array(null,'po_code','po_date','loc_name','appr_code','supp_name');
		var $column_search = array('po_code','po_date','loc_name','appr_code','supp_name');
		var $order = array('po_code' => 'desc');
		public function __construct()
		{
			parent::__construct();		
		}
		private function _get_datatables_query()
		{	
			if ($this->input->post('apprid')) 
			{
				$this->db->like('a.appr_id', $this->input->post('apprid') );
			}
			if ($this->input->post('branch')) 
			{
				$this->db->like('d.branch_id', $this->input->post('branch') );
			}
			if ($this->input->post('date_start') != null AND $this->input->post('date_end') != null ) {
				$this->db->where('a.po_date >=', $this->input->post('date_start'));
        		$this->db->where('a.po_date <=', $this->input->post('date_end'));  
			}
			$this->db->from($this->table);
			$this->db->join('trx_approvalbill b','b.appr_id = a.appr_id','left');
			$this->db->join('master_supplier c','c.supp_id = a.supp_id');
			$this->db->join('master_user d','d.user_id = a.user_id');
			$this->db->join('master_branch e','e.branch_id = d.branch_id');
			$i = 0;
			foreach ($this->column_search as $item)
			{
				if($_POST['search']['value'])
				{			
					if($i===0)
					{
						$this->db->group_start();
						$this->db->like($item, $_POST['search']['value']);
					}
					else
					{
						$this->db->or_like($item, $_POST['search']['value']);
					}

					if(count($this->column_search) - 1 == $i)
						$this->db->group_end();
				}
				$i++;
			}		
			if(isset($_POST['order']))
			{
				$this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
			} 
			else if(isset($this->order))
			{
				$order = $this->order;
				$this->db->order_by(key($order), $order[key($order)]);
			}
		}

		public function get_datatables()
		{
			$this->_get_datatables_query();
			if($_POST['length'] != -1)
			$this->db->limit($_POST['length'], $_POST['start']);
			$query = $this->db->get();
			return $query->result();
		}
		public function count_filtered()
		{
			$this->_get_datatables_query();
			$query = $this->db->get();
			return $query->num_rows();
		}
		public function count_all()
		{
			$this->db->from($this->table);
			return $this->db->count_all_results();
		}
	}
?>