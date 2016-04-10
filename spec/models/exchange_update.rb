require 'rails_helper'

describe ExchangeUpdate do

  it 'should be valid' do
    eu = ExchangeUpdate.new(rate: 100, time: Time.now + 1.minute)
    expect(eu).to be_valid
  end

  it 'should not to be valid without rate' do
    eu = ExchangeUpdate.new(time: Time.now + 1.minute)
    expect(eu).not_to be_valid
  end

  it 'should not to be valid with update time in pase' do
    eu = ExchangeUpdate.new(time: Time.now - 1.minute)
    expect(eu).not_to be_valid
  end

end
