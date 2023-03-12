/* Footer Form */
$(document).ready(function(){
  $(window).scroll(function(){
  	var scroll = $(window).scrollTop();
	  if (scroll > 650) {
        $(".navbar").css("background" , "#333"); 
	  }
	  else{
		   
          $(".navbar").css("background" , "none");	
	  }
  })
})
$(document).ready(function(){
    $(window).scroll(function(){
        var scroll = $(window).scrollTop();
        if (scroll > 650) {
          $(".logo").css("color" , "white"); 
        }
        else{
             
            $(".logo").css("background" , "none");	
        }
    })
  })
function Booking()
{
  alert("Please Sign In to continue Booking")
}