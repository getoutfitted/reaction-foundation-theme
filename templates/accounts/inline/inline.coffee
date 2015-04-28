Template.foundationLoginInline.helpers
  allowGuestCheckout: ->
    return ReactionCore.allowGuestCheckout

Template.foundationLoginInline.events
  'click .continue-guest': () ->
    Session.set "guestCheckoutFlow", true
