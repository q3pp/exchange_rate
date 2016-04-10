App.exchange = App.cable.subscriptions.create "ExchangeChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (rate) ->
    $('.rate').text(rate['rate'])

  update: (rate)->
    @perform 'update', rate: rate
