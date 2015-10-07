$(document).ready(function(){
	$(".door").mouseenter(function(){
		$(this).fadeTo("slow",1);
	});
	$(".door").mouseleave(function(){
		$(this).fadeTo("slow",0.5);
	});
})
