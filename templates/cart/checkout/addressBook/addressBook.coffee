###
# Template.checkoutAddressBook
# template determines which view should be used:
# addAddress (edit or add)
# addressBookView (view)
###
Template.foundationCheckoutAddressBook.helpers
  account: ->
    account = ReactionCore.Collections.Accounts.findOne()
    return account

  foundationAddressBookView: ->
    return Session.get "foundationAddressBookView"

Template.foundationCheckoutAddressBook.events
  'click .address-edit-icon': (event,template) ->
    addressBookEditId.set(@._id)
    Session.set "foundationAddressBookView", "foundationAddressBookEdit"

  'click #newAddress': () ->
    if Session.equals "foundationAddressBookView", "foundationAddressBookAdd"
      Session.set "foundationAddressBookView", "foundationAddressBookGrid"
    else
      Session.set "foundationAddressBookView", "foundationAddressBookAdd"
