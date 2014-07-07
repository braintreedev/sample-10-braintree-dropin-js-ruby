# Using the Braintree Dropin JS Client Library in Sinatra to make a payment

[![Build Status](https://travis-ci.org/commercefactory/010-braintree-dropin-js-ruby.svg?branch=master)](https://travis-ci.org/commercefactory/010-braintree-dropin-js-ruby)

This is an example of the Braintree Dropin JS Client Library in Sinatra to make a Credit Card or PayPal payment.

This branch includes a lot of files for the purpose of testing. To see a simplified example please switch to the [simplified](https://github.com/commercefactory/XXX-braintree-dropin-sdk/tree/simplified) branch.

## Technology

This demo uses

* Ruby 1.9.3 or higher
* The [Sinatra](http://www.sinatrarb.com/) web framework

## Demo

* Visit [10.commercefactory.org](http://10.commercefactory.org)
* Fill in the following credentials:
  * Number: `4111 1111 1111 1111`
  * CVV: `123`
  * Expiration date: `11/2020`
* Click submit
* You will receive a message that says __"Payment Success"__

## Running the demo locally

* Run `bundle` to install all dependencies
* Run `rackup` to start the app
* Visit `http://127.0.0.1:9292/` in your browser
* Proceed as above

## Running the test

* Requirement: [Firefox](http://getfirefox.com) for [Selenium](http://seleniumhq.org)
* Run `bundle` to install all dependencies
* Run `rake` to test the app
