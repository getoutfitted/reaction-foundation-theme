Template.foundationLoginDropdown.events
  "click .dropdown-menu": (event) ->
    event.stopPropagation()

  "click #logout": (event, template) ->
    Session.set 'displayConsoleNavBar', false
    Meteor.logout (err) ->
      Meteor._debug err if err
    event.preventDefault()

  "click .user-accounts-dropdown-apps a": (event, template) ->
    if @.route is "createProduct"
      event.preventDefault()
      Meteor.call "createProduct", (error, productId) ->
        if error
          console.log "createProduct error", error
        else if productId
          Router.go "product",
            _id: productId
          return
      return
    else if @.route
      event.preventDefault()
      Router.go(@.route)
