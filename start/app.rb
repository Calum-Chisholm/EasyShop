require( 'sinatra' )
require( 'sinatra/reloader' )
require_relative('./models/merchant')
require_relative('./models/product')
require_relative('./models/stock')
require_relative('./models/customer')
require_relative('./models/purchase')
require 'pry'

get '/' do
  @customers = Customer.all
  erb(:index)
end

get '/funds' do
  @customers = Customer.all
  erb(:funds)
end

get '/merchants' do
  @merchants = Merchant.all
  erb(:merchants)
end

get '/merchant/:id/stock' do
  @merchant = Merchant.find(params['id'].to_i)
  erb(:merchants_stock)
end

get '/product/:id/:price' do
  @product = Product.find(params['id'].to_i)
  @stock = Stock.find(params['price'].to_i)
  @merchant_id = params['merchant_id']
  erb(:product_buy)
end

post '/product/buy' do
  customer = Customer.all
  stock = Stock.find(params['stock_id'].to_i)
  customer[0].buy(stock, params['quantity'].to_i)
  redirect to '/'
end
