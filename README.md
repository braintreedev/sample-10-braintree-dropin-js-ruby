# Using the Braintree Dropin JS Client Library in Sinatra to make a payment

This is an example of the Braintree Dropin JS Client Library in Sinatra to make a Credit Card or PayPal payment.

## Technology

This demo uses

* Ruby 1.9.3 or higher
* The [Sinatra](http://www.sinatrarb.com/) web framework

## Running the demo

* Run `bundle` to install all dependencies
* Run `ruby app.rb` to start the app
* Visit `http://127.0.0.1:4567/` in your browser
* Fill in the following credentials:
  * Number: `4111 1111 1111 1111`
  * CVV: `123`
  * Expiration date: `11/2020`
* Click submit
* You will receive a message that says __"Payment Success"__
