class MainController < ApplicationController
  def home
    @exchange_update = ExchangeUpdate.last
    @exchange = Exchange.last
  end
end
