Template.foundationPageOrderDetail.helpers
  userProfile: () ->
    profileId = @.userId
    if profileId?
      userProfile = Meteor.subscribe "UserProfile", profileId
      if userProfile.ready()
        return Meteor.users.findOne profileId

  orderAge: () ->
    moment(@.createdAt).fromNow()

  shipmentTracking: ->
    @.shipping.shipmentMethod.tracking

  orderStateHelper: () ->
    switch @.state
      when 'orderCreated' then Template.foundationStateHelperTracking
      when 'shipmentTracking' then Template.foundationSpinner
      when 'shipmentPrepare' then Template.foundationStateHelperDocuments
      when 'shipmentPacking' then Template.foundationStateHelperPacking
      when 'processPayment' then Template.foundationStateHelperPayment
      when 'shipmentShipped' then Template.foundationStateHelperShipped
      when 'orderCompleted' then Template.foundationStateHelperCompleted
 
  paymentMethod: ->
    return this.payment.paymentMethod[0].processor
