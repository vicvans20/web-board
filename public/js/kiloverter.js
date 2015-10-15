$(document).ready(function(){
	$("#kiloverter-form").submit(function(ev){
		ev.preventDefault();
		$.ajax({
			url: "/convert",
			type: 'POST',
			data: $("#kiloverter-form").serialize(),
			// data: $(ev.target).serialize(),
			success: function(data){
				if(data.success){
					$("#kresult")[0].value = data.result;
				}
				else{
					alert("Something went wrong.");
				}
			}

		})
	})
});