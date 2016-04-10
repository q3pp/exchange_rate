require 'rails_helper'

describe Exchange do
  context 'get latest rate method'

  it 'should create new exchange' do
    expect{Exchange.get_latest_rate}.to change(Exchange, :count).by(1)
  end

  it 'should return some rate' do
    expect((Exchange.get_latest_rate).rate).not_to be nil
  end

end
