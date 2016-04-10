init = ->
  $('.datetimepicker').datetimepicker(
     format : 'DD/MM/YYYY HH:mm'
  )

  # $('#update-rate').on 'click', (e) ->
  #   rate = $('#exchange_update_rate').val()
  #   App.exchange.update(rate)

$( document ).ready init
