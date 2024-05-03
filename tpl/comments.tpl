<div class="comennts_list mb-20 pb-20">
<?php if(count($comments)>0): ?>
	<?php foreach($comments as $key=>$comment): ?>
		<div class="comment pt-20">
			<div class="comment_title">
				<div class="fl-left w-5 mx-w10"><strong><?php echo $comment['user_name']; ?></strong></div>
				<div class="fl-left"><span class="pl-30"><?php echo date('H:i',strtotime($comment["created_at"])); ?></span>
				<span class="pl-10"><?php echo date('d.m.Y',strtotime($comment["created_at"])); ?></span></div>
				<div class="clear"></div>
			</div>
			<div class="comment_text mt-10"><?php echo $comment['comment']; ?></div>
		</div>
	<?php endforeach; ?>
<?php else: ?>
	<p>Список комментариев пуст</p>
<?php endif; ?>
</div>
<h2>Оставить комментарий</h2>
<div class="w-50">
	<form id="add_comment" action="comments/add_comment" method="POST" class="comment_form mt-15">
		<div class="mb-10">
			<label for="form_comment_uname" class="d-block pb-10">Ваше имя</label>
			<input id="form_comment_uname" class="pl-20" name="uname" value="" />
		</div>
		<div class="mt-20 pb-5">
			<label for="form_comment_text" class="d-block pb-10">Ваш комментарий</label>
			<textarea id="form_comment_text" name="comment" rows="10"></textarea>
		</div>
		<p class="text_error"></p>
		<div class="mt-5 txt-right ml-25 w-100">
			<button class="btn">Отправить</button>
		</div>
	</form>
</div>