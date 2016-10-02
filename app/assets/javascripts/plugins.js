
$(document).on('turbolinks:load', function(){
  $("#right-side-items li a, .responsive-menu li a").each(function(){
    if ($(this).attr("href") == window.location.pathname){
      $(this).addClass("active");
    }
  });
  $('.slider').slick({
    dots: true,
    infinite: true,
    speed: 500,
    fade: true,
    cssEase: 'linear',
  });
  $('.menu-btn').click(function(){
    $('.responsive-menu').toggleClass('expand');
  });
});
