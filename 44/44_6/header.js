$(function(){
  $('.header-nav-link').click(function(){
    var id = $(this).attr('href');

    $('html, body').animate({
      scrollTop: ($(id).offset().top - 76)
    }, 800);
    return false;
  });
});
