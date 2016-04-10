class Exchange < ApplicationRecord
  require 'open-uri'

  UPDATE_URI = URI("https://api.fixer.io/latest?base=USD")

  def self.get_latest_rate
    response = open(UPDATE_URI).read
    rate = JSON.parse(response)["rates"]["RUB"]
    create(rate: rate)
  end

end
