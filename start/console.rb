require_relative('./models/merchant')
require_relative('./models/product')
require_relative('./models/stock')
require('pry')

Merchant.delete_all
Product.delete_all


new_product1 = {
'name' => 'TV'
}

product1 = Product.new(new_product1)
product1.save

new_merchant1 = {
  "name" => "Tesco"
}

merchant1 = Merchant.new(new_merchant1)
merchant1.save

new_stock1 = {
  'product_id' => product1.id,
  'merchant_id' => merchant1.id,
  'price' => 500
}

stock1 = Stock.new(new_stock1)
stock1.save



# binding.pry
