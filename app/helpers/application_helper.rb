module ApplicationHelper

def current_rate
  @exchange_update.try(:enable) ? @exchange_update.rate.to_f : @exchange.rate.to_f
end

end
