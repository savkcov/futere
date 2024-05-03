function setMainHeight(){
	var main_height= $(document).height()-($('header').outerHeight()+$('footer').outerHeight())-35;
	$('main').css({'height': '100%', 'min-height': main_height+'px'});
}
function setTextareaWidth(){
	$(".comment_form textarea").width(
		$('.comment_form input').innerWidth()-5
	);
}
		
		
setMainHeight();
setTextareaWidth();
		
$(window).resize(function(){
	setMainHeight();
	setTextareaWidth();
});

$(document).ready(function() {
	//добавление комментария
	$("#add_comment").on("submit", function(event){
		
		event.preventDefault();
		
		var that=$(this);
		var error_text=that.find('.text_error');
		var uname_val=that.find('#form_comment_uname').val();
		var comment_text=that.find('#form_comment_text').val();
		
		error_text.text('');
		error_text.hide();
		
		if(uname_val.length==0 || comment_text.length==0){
			error_text.text('Заполните все поля формы').show();
			return false;
		}
		
		var data={'uname':uname_val, 'comment':comment_text};
		
		$.ajax({
			method: that.attr('method'),
			url: that.attr('action'),
			data: data,
			dataType: 'json',
			success:function(result){
				if(result.status==1){
					alert('Комментарий добавлен');
					location.reload();
				}else{
					error_text.text(result.message);
				}
			},
			error: function(msg){
				alert(msg);
			}
		});
		
		console.log(data);
		
		
		
	});
	
});