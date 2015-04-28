###
# console nav bar
###
Template.foundationConsoleNavBar.events
  'click #dashboard-navbar-close-button': () ->
    toggleSession "displayConsoleNavBar"

  'click #dashboard-drawer-close-button': () ->
    toggleSession "displayConsoleDrawer"

Template.foundationConsoleNavBar.helpers
  displayConsoleDrawer: ->
    if ReactionCore.hasOwnerAccess() and Session.get 'displayConsoleDrawer'
      return true

###
# console widgets
###
Template.foundationConsoleWidgets.rendered = ->
  @autorun ->
    $ ->
      dashboardSwiper = $(".dashboard-container").swiper(
        mode: "horizontal"
        loop: false
        slidesPerView: "auto"
        wrapperClass: "dashboard-widget-wrapper"
        slideClass: "dashboard-widget"
      )
    return
