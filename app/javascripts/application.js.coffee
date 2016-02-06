#= require jquery/dist/jquery
#= require jquery.role/lib/jquery.role
#= require hideShowPassword/hideShowPassword.min
#= require bootstrap-validator/dist/validator

window.App ||= {}

((app) ->
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

)(window.App ||={})


