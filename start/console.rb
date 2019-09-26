require_relative('./models/merchant')
require_relative('./models/product')
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

product1.name = 'xbox'
product1.update

merchant1.name = "Asda"
merchant1.update


binding.pry
