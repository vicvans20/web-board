$(document).ready(function(){
	console.log("cargue")
	$("#sum-form").submit(function(ev){
		ev.preventDefault();
		console.log("form");
		$.ajax({
			url: "/sum",
			type: 'POST',
			data: $("#sum-form").serialize(),
			// data: $(ev.target).serialize(),
			success: function(data){
				if(data.success){
					$("#sum-result")[0].value = data.result
				}
				else{
					alert("Something went wrong.");
				}
			}

		})
	})
});