#
Router.onAfterAction ->
  $(document).foundation()
  
  $(window).bind "load", ->
    $footer = $("#footer")
    pos = $footer.position()
    height = $(window).height()
    height = height - pos.top
    height = height - $footer.outerHeight()
    if height > 0
      $footer.css({
        'margin-top': height + 'px'
      })
  
  return
