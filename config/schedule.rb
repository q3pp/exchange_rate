set :environment, "development"

every 30.minute do
  runner "Exchange.get_latest_rate"
end
