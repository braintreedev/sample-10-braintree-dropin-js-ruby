require 'sinatra'
require 'braintree'

class Application < Sinatra::Base

  Braintree::Configuration.environment = :sandbox
  Braintree::Configuration.merchant_id = 'ffdqc9fyffn7yn2j'
  Braintree::Configuration.public_key = 'qj65nndbnn6qyjkp'
  Braintree::Configuration.private_key = 'a3de3bb7dddf68ed3c33f4eb6d9579ca'

  get "/" do
    @client_token = Braintree::ClientToken.generate
    erb :index
  end

  post "/process" do
    transaction = Braintree::Transaction.sale(
      amount: "100.00",
      payment_method_nonce: params[:payment_method_nonce]
    )

    if transaction.success?
      raise transaction.inspect
      "Payment success"
    else
      raise transaction.inspect
      "Payment failed"
    end
  end
end
