#= require jquery/dist/jquery
#= require jquery.role/lib/jquery.role
#= require hideShowPassword/hideShowPassword.min

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
            content: '<i class="ics ics-shown"></i>'
        hidden:
          toggle:
            content: '<i class="ics ics-hidden"></i>'

)(window.App ||={})


