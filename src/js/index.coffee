$ ->
  $(".head__content-navigation-menu-item").click ->
    if $(@).hasClass 'active'
      $(@).removeClass 'active'
    else
      $(".head__content-navigation-menu-item").removeClass 'active'
      $(@).addClass 'active'
