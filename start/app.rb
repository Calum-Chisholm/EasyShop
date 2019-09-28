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
