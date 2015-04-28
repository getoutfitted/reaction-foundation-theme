Template.foundationMemberForm.events
  "submit form": (event, template) ->
    event.preventDefault()
    $form = $(template.find("form"))
    hash = $form.serializeHash()
    Meteor.call "inviteShopMember", ReactionCore.getShopId(), hash.email, hash.name, (error) ->
      if error?
        console.log(error)
        if error.reason != ''
          Alerts.add error, "alert", html: true
        else
          Alerts.add "Error sending email, possible configuration issue." + error, "alert"
        return false
      else
        Alerts.add i18n.t("app.invitationSent", "Invitation sent."), "success", autoHide: true
        $('member-form').foundation('reveal', 'close')
        return true

  "click #button-member-add-cancel": (event, template) ->
    $('#member-form').foundation('reveal', 'close')
