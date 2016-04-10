class ExchangeUpdatesController < ApplicationController
  before_action :set_exchange_updates

  def new
    @exchange_update  = ExchangeUpdate.new
  end

  def create
    @exchange_update = ExchangeUpdate.new(exchange_update_params)

    if @exchange_update.save
      ActionCable.server.broadcast 'exchange_channel', rate: @exchange_update.rate
      RemoveForceRateJob.set(wait_until: @exchange_update.time).perform_later(@exchange_update)
      redirect_to '/admin'
    else
      render :new
    end

  end

  private
  def exchange_update_params
    params.require(:exchange_update).permit(:rate, :time)
  end

  def set_exchange_updates
    @exchange_updates  = ExchangeUpdate.all
  end
end
