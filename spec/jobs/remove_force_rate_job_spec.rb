require 'rails_helper'

describe RemoveForceRateJob do
  before :each do
    @exchange_update = ExchangeUpdate.create(rate: 100, time: Time.now + 1.minute)
  end

  it 'should change enable status' do
    RemoveForceRateJob.perform_now(@exchange_update)
    @exchange_update.reload
    expect(@exchange_update.enable).to eq false
  end
end
