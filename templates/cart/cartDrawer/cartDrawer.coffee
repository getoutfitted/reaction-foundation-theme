### **************************************************************
# Template Cart Drawer
# ************************************************************ ###
Template.foundationCartDrawer.helpers
  displayCartDrawer: ->
    unless Session.equals "displayCart", true
      return null

    storedCart = Cart.findOne()
    count = 0
    ((count += items.quantity) for items in storedCart.items) if storedCart?.items
    if count is 0
      return Template.foundationEmptyCartDrawer
    else
      return Template.foundationOpenCartDrawer

Template.foundationOpenCartDrawer.rendered = ->
  $('#cart-drawer-container').fadeIn()

Template.foundationOpenCartDrawer.helpers
  cartItems: ->
    Cart.findOne().items

  checkoutView: ->
    checkoutView = "display:block"
    if Router.current().route.getName() is 'cartCheckout' then checkoutView

Template.foundationOpenCartDrawer.events
  'click #btn-checkout': (event,template) ->
    $('#cart-drawer-container').fadeOut()
    Session.set "displayCart", false
    CartWorkflow.checkout()

  'click .remove-cart-item': (event,template) ->
    event.stopPropagation()
    event.preventDefault()
    currentCartId = Cart.findOne()._id
    currentVariant = this.variants
    sessionId = Session.get "sessionId"

    $(event.currentTarget).fadeOut 300, ->
      Meteor.call 'removeFromCart', sessionId, currentCartId, currentVariant

Template.foundationEmptyCartDrawer.events
  'click #btn-keep-shopping': (event,template) ->
    event.stopPropagation()
    event.preventDefault()
    $('#cart-drawer-container').fadeOut(300, ()->
      toggleSession "displayCart")

Template.foundationEmptyCartDrawer.rendered = ->
  $('#cart-drawer-container').fadeIn()
