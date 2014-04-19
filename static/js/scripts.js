$(document).ready(function(){
  
  $("span.menu-link").click(function(event){
    var nextMenu = $(this).next(".menu");
    console.log(nextMenu.siblings(".menu").slideUp());
    nextMenu.siblings(".menu").slideUp();
    nextMenu.slideToggle();
  })
  
});