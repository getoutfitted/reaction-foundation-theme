loginButtonsSession = Accounts._loginButtonsSession

Template.foundationCheckoutLogin.rendered = ->
  # initial screen in checkout should be to create an account
  loginButtonsSession.set "inSignupFlow", true

Template.foundationCheckoutLogin.helpers
  allowGuestCheckout: ->
    return ReactionCore.allowGuestCheckout
