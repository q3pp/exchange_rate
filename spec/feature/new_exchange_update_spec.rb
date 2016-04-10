require 'rails_helper'

feature 'Add new exchange update' do
  scenario 'update exhange on root path' do
    visit admin_path
    fill_in 'exchange_update_rate', with: 100
    fill_in 'exchange_update_time', with: Time.now() + 10.minute
    expect{page.find('#update-rate').click }.to change(ExchangeUpdate, :count).by(1)
    visit root_path
    expect(page.find('.rate').text()).to eq('100.0')

  end
end
