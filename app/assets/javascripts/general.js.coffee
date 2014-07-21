ready = ->
  $(window).scroll ->
    if $(this).scrollTop() > 100
      $('.scrollup').fadeIn()
    else
      $('.scrollup').fadeOut()

  $('.scrollup').click ->
    $('html, body').animate scrollTop: 0, 1000
    return false

$ ready
$(document).on 'page:load', ready
