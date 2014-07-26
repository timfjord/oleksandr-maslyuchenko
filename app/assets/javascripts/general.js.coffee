toggleScrollup = ->
  if $(window).scrollTop() > 100
    $('.scrollup').fadeIn()
  else
    $('.scrollup').fadeOut()

ready = ->
  $(window).scroll toggleScrollup

  $('.scrollup').click ->
    $('html, body').animate scrollTop: 0, 1000
    false

  toggleScrollup()

$ ready
$(document).on 'page:load', ready
