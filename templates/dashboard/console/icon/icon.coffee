Template.foundationConsoleIcon.helpers
  toggleStateClass: () ->
    state = Session.get "displayConsoleNavBar"
    if state is true
      return "fa fa-dashboard dashboard-state-active"
    else
      return "fa fa-dashboard"

Template.foundationConsoleIcon.events
  "click #dashboard-drawer-icon": (event, template) ->
    event.preventDefault()
    # if Session.equals "displayConsoleNavBar", false
    #   Router.go "dashboard"
    toggleSession "displayConsoleNavBar"
