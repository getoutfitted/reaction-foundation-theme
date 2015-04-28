Template.foundationShopAccounts.rendered = ->
  $(document).foundation('reveal', 'reflow');

Template.foundationShopAccounts.helpers
  members: () ->
    return Shops.findOne()?.members

Template.foundationShopAccounts.events
  "click #button-add-member": (event,template) ->
    $('#member-form').foundation('reveal', 'open')
