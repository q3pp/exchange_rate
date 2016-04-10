# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class ExchangeChannel < ApplicationCable::Channel
  def subscribed
    stream_from "exchange_channel"
  end

  def unsubscribed
  end

  def update(data)
    
  end
end
