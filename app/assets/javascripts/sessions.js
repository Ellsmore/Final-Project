$(document).ready(function(){
  $('input').focus(function(){
    $('.logo').css({'transform': 'rotate(-360deg)'});
  });

  $('input').blur(function(){
    $('.logo').css({'transform': 'rotate(0deg)'}, 500);
  });
});
