function faqControl(){
	$(".a").hide();
	$(".q").on("click", function() {
		var answerLi = $(this).next();
		if($(this).attr("data-icon") === "+"){
			$(this).attr("data-icon", "-");
			answerLi.slideDown();
		}else{
			$(this).attr("data-icon", "+");
			answerLi.slideUp();
		}
	});
}

$(document).ready(function(){
	faqControl();
});