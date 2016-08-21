
$(document).ready(function (){
  $("#cart-nav").on("click", function() {
    $(".shopping-cart").fadeToggle("fast");
  });

  $("#cart-nav").on("click", function() {
    $("h3").css("color", "red");
  });

});
