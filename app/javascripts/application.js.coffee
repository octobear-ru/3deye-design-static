#= require jquery/dist/jquery
#= require jquery.role/lib/jquery.role
#= require bootstrap-sass-official/assets/javascripts/bootstrap
#= require hideShowPassword/hideShowPassword.min
#= require bootstrap-validator/dist/validator
#= require purl/purl
#= require data-toggle-hide

window.App ||= {}

((app) ->
  url = $.url()

  $(document).ready ->
    $('@password-toggle').hideShowPassword
      show: false
      innerToggle: true
      toggle:
        element: '<button type="button" class="btn btn-link btn-link--gray form-control-password-toggle">'
      states:
        shown:
          toggle:
            content: '<i class="ics ics-shown form-control-password-toggle-icon form-control-password-toggle-icon--shown"></i>'
        hidden:
          toggle:
            content: '<i class="ics ics-hidden form-control-password-toggle-icon form-control-password-toggle-icon--hidden"></i>'

    $('@signup-validator').validator
      feedback:
        success: 'ics ics-selected form-control-validator-icons'
        error: 'ics ics-cancel form-control-validator-icons'

    $('@signup-partner-background').each ->
      hue = parseInt url.data.param.query.hue
      primary = "hsl(#{hue}, 53%, 47%)"
      secondary = "hsl(#{hue - 19}, 53%, 47%)"
      $(@).css 'background', "linear-gradient(150deg, #{primary}, #{secondary})"


    $('[data-toggle*="collapse"]').on 'click', (e) ->
      e.preventDefault()
      target = $(@).attr('href') || $(@).data('target')
      $(target).collapse('toggle')


    $('[data-toggle="tooltip"]').tooltip()

)(window.App ||={})


