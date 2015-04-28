Template.foundationAlert.created = ->
  this.isFirstRender = true

Template.foundationAlert.rendered = ->
  alert = @data
  $node = $(@firstNode)
  Meteor.defer ->
    Alerts.collection_.update alert._id,
      $set:
        seen: true

    return

  $node.removeClass("hide").hide().fadeIn alert.options.fadeIn, ->
    if alert.options.autoHide
      Meteor.setTimeout (->
        $node.fadeOut alert.options.fadeOut, ->
          # After we auto-hide, delete the alert
          Alerts.collection_.remove alert._id
        return
      ), alert.options.autoHide
    return

  return

Template.foundationAlerts.helpers
  alerts: (placement) ->
    unless placement? then placement=""
    return Alerts.collection_.find({"options.placement": placement})

Template.foundationAlert.helpers
  isFirstRender: () ->
    # We use this to add the "hide" class only on first render because if we add it
    # on rerenders, it never gets removed because we remove it in `rendered` callback.
    # TODO: Uncomment after this is released: https://github.com/EventedMind/iron-router/issues/691
    #t = UI._templateInstance()
    #if t.isFirstRender
    #  t.isFirstRender = false
    #  return true
    #else
    #  return false
    return false

Template.foundationAlert.events
  'click button.close': (event, template) ->
    # When we close, delete the alert
    Alerts.collection_.remove this._id
