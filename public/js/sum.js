$(document).ready(function(){
	$("#sum-form").submit(function(ev){
		ev.preventDefault();
		$.ajax({
			url: "/sum",
			type: 'POST',
			data: $("#sum-form").serialize(),
			// data: $(ev.target).serialize(),
			success: function(data){
				if(data.success){
					$("#sum-result").focus();
					$("#sum-result")[0].value = data.result;
					setInterval(function(){
						$("#sum-result").blur();
					},350)
					
				}
				else{
					alert("Something went wrong.");
				}
			}

		})
	})
});