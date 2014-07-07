require_relative '../spec_helper'

describe 'A rejected payment', js: true, type: :request do

  it 'responds with a failed message' do
    visit '/'

    within_frame(find('iframe')) do
      card_number = '4111 1111 1111 1111'
      fill_in 'credit-card-number', with: card_number
      fill_in 'cvv', with: '200'
      fill_in 'expiration', with: '11/15'
    end

    find_button('Submit Payment').click

    expect(page).to have_content('Payment failed')
  end
end
