require_relative('./models/merchant')
require_relative('./models/product')
require_relative('./models/stock')
require_relative('./models/customer')
require_relative('./models/purchase')
require('pry')

Merchant.delete_all
Product.delete_all
Customer.delete_all
Purchase.delete_all
Stock.delete_all


new_product1 = {
'name' => 'TV'
}

new_product2 = {
  'name' => 'FroYo'
}
new_product3 = {
  'name' => 'iPhone'
}

product1 = Product.new(new_product1)
product1.save
product2 = Product.new(new_product2)
product2.save
product3 = Product.new(new_product3)
product3.save

new_merchant1 = {
  "name" => "Tesco"
}
new_merchant2 = {
  'name' => 'FoodCo'
}
new_merchant3 = {
  'name' => 'Asda'
}

merchant1 = Merchant.new(new_merchant1)
merchant1.save
merchant2 = Merchant.new(new_merchant2)
merchant2.save
merchant3 = Merchant.new(new_merchant3)
merchant3.save

new_stock1 = {
  'product_id' => product1.id,
  'merchant_id' => merchant1.id,
  'price' => 500
}
new_stock2 = {
  'product_id' => product2.id,
  'merchant_id' => merchant2.id,
  'price' => 10
}
new_stock3 = {
  'product_id' => product3.id,
  'merchant_id' => merchant3.id,
  'price' => 800
}
new_stock4 = {
  'product_id' => product1.id,
  'merchant_id' => merchant3.id,
  'price' => 2000
}

stock1 = Stock.new(new_stock1)
stock1.save
stock2 = Stock.new(new_stock2)
stock2.save
stock3 = Stock.new(new_stock3)
stock3.save
stock4 = Stock.new(new_stock4)
stock4.save

new_customer = {
  'name' => 'Ricky',
  'wallet' => 5000
}

customer1 = Customer.new(new_customer)
customer1.save

new_purchase1 = {
  'stock_id' => stock4.id,
  'customer_id' => customer1.id,
  'quantity' => 1
}
new_purchase2 = {
  'stock_id' => stock2.id,
  'customer_id' => customer1.id,
  'quantity' => 3
}
new_purchase3 = {
  'stock_id' => stock3.id,
  'customer_id' => customer1.id,
  'quantity' => 1
}

purchase1 = Purchase.new(new_purchase1)
purchase1.save
purchase2 = Purchase.new(new_purchase2)
purchase2.save
purchase3 = Purchase.new(new_purchase3)
purchase3.save

binding.pry
