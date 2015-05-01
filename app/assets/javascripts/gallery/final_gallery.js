$(document).ready(function(){        
	$('li img').on('click',function(){
		var src = $(this).attr('src');
		var desc = $(this).attr('description');
		if (desc == undefined) desc = '';
		var img = '<img src="' + src + '" class="img-responsive"/>';
		
		//start of new code new code
		var index = $(this).parent('li').index();   
		
		var html = '';
		html += img;                
		html += '<div style="overflow: auto;clear:both;display:block;">';
		html += '<h1>' + desc + '</h1>';
		html += '</div>';

		//alert(html);
		
		$('#myModal').modal();
		$('#myModal').on('shown.bs.modal', function(){
			$('#myModal .modal-body').html(html);
			//new code
			$('a.controls').trigger('click');
		})
		$('#myModal').on('hidden.bs.modal', function(){
			$('#myModal .modal-body').html('');
		});
		
		
		
		
   });	
})