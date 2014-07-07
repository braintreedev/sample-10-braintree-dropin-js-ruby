require_relative '../spec_helper'

describe 'A successful Credit Card payment', js: true, type: :request do
  it 'responds with a success message' do
    visit '/'

    card_number = '4111 1111 1111 1111'

    within_frame(find('iframe')) do
      fill_in 'credit-card-number', with: card_number
      fill_in 'cvv', with: '123'
      fill_in 'expiration', with: '11/15'
    end

    find_button('Submit Payment').click

    expect(page).to have_content('Payment Success')
    expect(page).not_to have_content(card_number)
   end
end
