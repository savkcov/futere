<?php
//Контроллер страницы "Комментарии"
class Controller_comments extends Controller
{
	function __construct()
    {
        //инициализация виевера
        $this->view = new View_comments();
		//инициализация модели
        $this->model = new comments();
    }
	
	 // просмотр
    function action_view()
    {
		$res=['comments'=>$this->model->get_comments()];

        $this->view->__set('res', $res)->get_body();
    }
	
	function action_add_comment(){
		$res['status'] = 1;
		if(empty($_POST['uname']) || empty($_POST['comment'])){
			$res['status']=2;
			$this->view->__set('ajax_res', $res)->get_ajax();
			return false;
		}
		
		$uname=$_POST['uname'];
		$comment=$_POST['comment'];
		
		if(!$this->model->add_comment($uname, $comment)){
			$res['status'] = 3;
			$this->view->__set('ajax_res', $res)->get_ajax();
			return false;
		}
	
        $this->view->__set('ajax_res', $res)->get_ajax();
	}
	
}