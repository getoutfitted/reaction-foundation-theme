Template.foundationCartIcon.helpers
  cart: ->
    return ReactionCore.Collections.Cart.findOne()

Template.foundationCartIcon.events
  'click .cart-icon': () ->
    $('#cart-drawer-container').fadeOut(300, ()->
      toggleSession "displayCart")
