require_relative '../spec_helper'

describe 'A successful PayPal payment', js: true, type: :request do
  it 'responds with a success message' do
    visit '/'

    within_frame(find('iframe')) do
      click_button 'Pay with PayPal'
    end

    within_frame(find('#braintree-paypal-frame')) do
      fill_in 'email', with: 'us-customer@commercefactory.org'
      fill_in 'password', with: 'test1234'
      click_button 'Log In'
      click_button 'Agree'
    end

    click_button 'Submit Payment'

    expect(page).to have_content('Payment Success')
   end
end
