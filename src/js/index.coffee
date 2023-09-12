$ ->
  $(".head__content-navigation-menu-item").click ->
    if $(@).hasClass 'active'
      $(@).removeClass 'active'
    else
      $(".head__content-navigation-menu-item").removeClass 'active'
      $(@).addClass 'active'

  currentIndex = 0
  slides = $('.middle__content-slide-wrapper-content-item')

  updateSlide = (index) ->
    slides.each (i, slide) ->
      if i == index
        $(slide).removeClass('not-show').addClass('show')
      else
        $(slide).removeClass('show').addClass('not-show')

  nextSlide = ->
    if currentIndex < slides.length - 1
      currentIndex += 1
      updateSlide(currentIndex)
    else
      currentIndex = 0
      updateSlide(currentIndex)

  $('.middle__content-slide-wrapper-prev').click ->
    if currentIndex > 0
      currentIndex -= 1
      updateSlide(currentIndex)
    else
      currentIndex = slides.length - 1
      updateSlide(currentIndex)

  $('.middle__content-slide-wrapper-next').click ->
    nextSlide()

  setInterval(nextSlide, 1000)