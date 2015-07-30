$(document).ready =>
  $('.js-scroll-to .navbar-brand').click (e) ->
    target = $(this).attr('href')
    $offsetTop = $(target).offset().top - $('.js-scroll-to').outerHeight() - 10
    #console.log($offsetTop);
    $('html, body').stop().animate { scrollTop: $offsetTop }, 500
    $('.js-scroll-to .navbar-brand.__current').removeClass '__current'
    $(this).addClass '__current'
    e.preventDefault()
    return

 # offsetScroll = $('.js-fixed').offset()
  $(window).scroll ->


    topW = $(window).scrollTop()
    $('.items-list').each (i) ->
      if $(this).position().top <= topW + 80
        $('.js-scroll-to .navbar-brand.__current').removeClass '__current'
        $('.js-scroll-to .navbar-brand').eq(i).addClass '__current'


    return