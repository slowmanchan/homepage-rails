
$(document).on('turbolinks:load', function(){
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
