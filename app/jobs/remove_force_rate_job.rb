class RemoveForceRateJob < ApplicationJob
  queue_as :default

  def perform(exchange_update)
    exchange_update.update(enable: false)
    ActionCable.server.broadcast 'exchange_channel', rate: Exchange.last.rate
  end
end
