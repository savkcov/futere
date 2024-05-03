<?php
class comments{
	protected $db;
	public $mysqli;
	private $table='comments';
	
	public function __construct(){
		$this->db=Database::getInstance();
		$this->mysqli=$this->db->getConnection();
	}
	
	public function get_comments(){
		$sql="SELECT user_name, comment, created_at from ".$this->table." ORDER BY created_at DESC";
		$query = $this->mysqli->query($sql);
		$result=[];
		while($res=$query->fetch_assoc()){
			$result[]=$res;
		}
		return $result; 
	}
	
	public function add_comment($uname, $comment){
		$uname=trim(addslashes($uname));
		$comment=trim(addslashes($comment));
		$sql="INSERT INTO ".$this->table." (user_name, comment) VALUES ('$uname', '$comment')";
		return $this->mysqli->query($sql);
	}
	
}