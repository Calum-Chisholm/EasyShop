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
new_product4 = {
  'name' => '`Lawmower`'
}
new_product5 = {
  'name' => 'Tent'
}
new_product6 = {
  'name' => 'Cake'
}
new_product7 = {
  'name' => 'Table'
}
new_product8 = {
  'name' => 'Pencil Case'
}
new_product9 = {
  'name' => 'Gibson Flying V'
}
new_product10 = {
  'name' => 'Latte'
}
new_product11 = {
  'name' => 'stainless steal water bottle'
}
new_product12 = {
  'name' => 'waterproof jacket'
}
new_product13 = {
  'name' => 'dm boots'
}
new_product14 = {
  'name' => 'battery opperated salt and pepper shaker'
}
new_product15 = {
  'name' => 'Duvet'
}
new_product16 = {
  'name' => 'Mattress'
}
new_product17 = {
  'name' => 'Frosties'
}
new_product18 = {
  'name' => 'Crunchy Nut'
}
new_product19 = {
  'name' => 'Snake Oil'
}
new_product20 = {
  'name' => 'PC'
}
new_product21 = {
  'name' => 'Watch'
}
new_product22 = {
  'name' => 'Mini Skirt'
}
new_product23 = {
  'name' => 'Radio'
}
new_product24 = {
  'name' => 'Microwave'
}
new_product25 = {
  'name' => 'Dream Ring'
}
new_product26 = {
  'name' => 'Sausage Roll'
}
new_product27 = {
  'name' => 'Tuna Mayo'
}
new_product28 = {
  'name' => 'Kitchen Roll'
}
new_product29 = {
  'name' => 'Nails'
}
new_product30 = {
  'name' => 'Hammer'
}
new_product31 = {
  'name' => 'Contact Lense Solution'
}
new_product32 = {
  'name' => 'Nail Varnish Remover'
}
new_product33 = {
  'name' => 'Anti Histamine'
}
new_product34 = {
  'name' => 'PC charger'
}
new_product35 = {
  'name' => 'White Board'
}
new_product36 = {
  'name' => 'Folders'
}
new_product37 = {
  'name' => 'White Board Markers'
}
new_product38 = {
  'name' => 'Flip Charts '
}
new_product39 = {
  'name' => 'Copier Paper'
}
new_product40 = {
  'name' => 'Rubber Duck'
}

product1 = Product.new(new_product1)
product1.save
product2 = Product.new(new_product2)
product2.save
product3 = Product.new(new_product3)
product3.save
product4 = Product.new(new_product4)
product4.save
product5 = Product.new(new_product5)
product5.save
product6 = Product.new(new_product6)
product6.save
product7 = Product.new(new_product7)
product7.save
product8 = Product.new(new_product8)
product8.save
product9 = Product.new(new_product9)
product9.save
product10 = Product.new(new_product10)
product10.save
product11 = Product.new(new_product11)
product11.save
product12 = Product.new(new_product12)
product12.save
product13 = Product.new(new_product13)
product13.save
product14 = Product.new(new_product14)
product14.save
product15 = Product.new(new_product15)
product15.save
product16 = Product.new(new_product16)
product16.save
product17 = Product.new(new_product17)
product17.save
product18 = Product.new(new_product18)
product18.save
product19 = Product.new(new_product19)
product19.save
product20 = Product.new(new_product20)
product20.save
product21 = Product.new(new_product21)
product21.save
product22 = Product.new(new_product22)
product22.save
product23 = Product.new(new_product23)
product23.save
product24 = Product.new(new_product24)
product24.save
product25 = Product.new(new_product25)
product25.save
product26 = Product.new(new_product26)
product26.save
product27 = Product.new(new_product27)
product27.save
product28 = Product.new(new_product28)
product28.save
product29 = Product.new(new_product29)
product29.save
product30 = Product.new(new_product30)
product30.save
product31 = Product.new(new_product31)
product31.save
product32 = Product.new(new_product32)
product32.save
product33 = Product.new(new_product33)
product33.save
product34 = Product.new(new_product34)
product34.save
product35 = Product.new(new_product35)
product35.save
product36 = Product.new(new_product36)
product36.save
product37 = Product.new(new_product37)
product37.save
product38 = Product.new(new_product38)
product38.save
product39 = Product.new(new_product39)
product39.save
product40 = Product.new(new_product40)
product40.save

new_merchant1 = {
  "name" => "Tesco"
}
new_merchant2 = {
  'name' => 'FoodCo'
}
new_merchant3 = {
  'name' => 'Asda'
}
new_merchant4 = {
  'name' => 'Currys'
}
new_merchant5 = {
  'name' => 'Dreams'
}
new_merchant6 = {
  'name' => 'HarryGow'
}
new_merchant7 = {
  'name' => 'Greazy Bobs'
}
new_merchant8 = {
  'name' => 'Saisburrys'
}
new_merchant10 = {
  'name' => 'Office Supplies'
}
new_merchant11 = {
  'name' => 'Lidl'
}
new_merchant13 = {
  'name' => 'NewLook'
}
new_merchant14= {
  'name' => 'Mango'
}
new_merchant15 = {
  'name' => 'Boots'
}
new_merchant16 = {
  'name' => 'Highland Industial supplies'
}


merchant1 = Merchant.new(new_merchant1)
merchant1.save
merchant2 = Merchant.new(new_merchant2)
merchant2.save
merchant3 = Merchant.new(new_merchant3)
merchant3.save
merchant4 = Merchant.new(new_merchant4)
merchant4.save
merchant5 = Merchant.new(new_merchant5)
merchant5.save
merchant6 = Merchant.new(new_merchant6)
merchant6.save
merchant7 = Merchant.new(new_merchant7)
merchant7.save
merchant8 = Merchant.new(new_merchant8)
merchant8.save
merchant10 = Merchant.new(new_merchant10)
merchant10.save
merchant11 = Merchant.new(new_merchant11)
merchant11.save
merchant14 = Merchant.new(new_merchant14)
merchant14.save
merchant15 = Merchant.new(new_merchant15)
merchant15.save
merchant16 = Merchant.new(new_merchant16)
merchant16.save

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
new_stock5 = {
  'product_id' => product8.id,
  'merchant_id' => merchant1.id,
  'price' => 10
}
new_stock6 = {
  'product_id' => product17.id,
  'merchant_id' => merchant1.id,
  'price' => 3
}
new_stock7 = {
  'product_id' => product6.id,
  'merchant_id' => merchant2.id,
  'price' => 13
}
new_stock8 = {
  'product_id' => product10.id,
  'merchant_id' => merchant2.id,
  'price' => 6
}
new_stock9 = {
  'product_id' => product28.id,
  'merchant_id' => merchant3.id,
  'price' => 3
}
new_stock10 = {
  'product_id' => product20.id,
  'merchant_id' => merchant4.id,
  'price' => 200
}
new_stock11 = {
  'product_id' => product34.id,
  'merchant_id' => merchant4.id,
  'price' => 20
}
new_stock12 = {
  'product_id' => product23.id,
  'merchant_id' => merchant4.id,
  'price' => 30
}
new_stock13 = {
  'product_id' => product16.id,
  'merchant_id' => merchant5.id,
  'price' => 600
}
new_stock14 = {
  'product_id' => product15.id,
  'merchant_id' => merchant5.id,
  'price' => 40
}
new_stock15 = {
  'product_id' => product40.id,
  'merchant_id' => merchant5.id,
  'price' => 1000000
}
new_stock16 = {
  'product_id' => product26.id,
  'merchant_id' => merchant6.id,
  'price' => 5
}
new_stock17 = {
  'product_id' => product25.id,
  'merchant_id' => merchant6.id,
  'price' => 1
}
new_stock18 = {
  'product_id' => product27.id,
  'merchant_id' => merchant6.id,
  'price' => 3
}
new_stock19 = {
  'product_id' => product35.id,
  'merchant_id' => merchant10.id,
  'price' => 100
}
new_stock20 = {
  'product_id' => product37.id,
  'merchant_id' => merchant10.id,
  'price' => 7
}
new_stock21 = {
  'product_id' => product36.id,
  'merchant_id' => merchant10.id,
  'price' => 13
}
new_stock22 = {
  'product_id' => product38.id,
  'merchant_id' => merchant10.id,
  'price' => 8
}
new_stock23 = {
  'product_id' => product39.id,
  'merchant_id' => merchant10.id,
  'price' => 3
}
new_stock24 = {
  'product_id' => product24.id,
  'merchant_id' => merchant8.id,
  'price' => 70
}
new_stock25 = {
  'product_id' => product21.id,
  'merchant_id' => merchant8.id,
  'price' => 12
}
new_stock26 = {
  'product_id' => product18.id,
  'merchant_id' => merchant8.id,
  'price' => 4
}
new_stock27 = {
  'product_id' => product29.id,
  'merchant_id' => merchant7.id,
  'price' => 10
}
new_stock28 = {
  'product_id' => product30.id,
  'merchant_id' => merchant7.id,
  'price' => 12
}
new_stock29 = {
  'product_id' => product19.id,
  'merchant_id' => merchant7.id,
  'price' => 20000
}
new_stock30 = {
  'product_id' => product5.id,
  'merchant_id' => merchant11.id,
  'price' => 60
}
new_stock31 = {
  'product_id' => product28.id,
  'merchant_id' => merchant11.id,
  'price' => 3
}
new_stock32 = {
  'product_id' => product24.id,
  'merchant_id' => merchant11.id,
  'price' => 80
}
new_stock33 = {
  'product_id' => product22.id,
  'merchant_id' => merchant14.id,
  'price' => 24
}
new_stock34 = {
  'product_id' => product12.id,
  'merchant_id' => merchant14.id,
  'price' => 36
}
new_stock35 = {
  'product_id' => product31.id,
  'merchant_id' => merchant15.id,
  'price' => 12
}
new_stock36 = {
  'product_id' => product32.id,
  'merchant_id' => merchant15.id,
  'price' => 11
}
new_stock37 = {
  'product_id' => product33.id,
  'merchant_id' => merchant15.id,
  'price' => 14
}
new_stock38 = {
  'product_id' => product14.id,
  'merchant_id' => merchant16.id,
  'price' => 24
}
new_stock39 = {
  'product_id' => product11.id,
  'merchant_id' => merchant16.id,
  'price' => 21
}
new_stock40 = {
  'product_id' => product9.id,
  'merchant_id' => merchant16.id,
  'price' => 1300
}



stock1 = Stock.new(new_stock1)
stock1.save
stock2 = Stock.new(new_stock2)
stock2.save
stock3 = Stock.new(new_stock3)
stock3.save
stock4 = Stock.new(new_stock4)
stock4.save
stock5 = Stock.new(new_stock5)
stock5.save
stock6 = Stock.new(new_stock6)
stock6.save
stock7 = Stock.new(new_stock7)
stock7.save
stock8 = Stock.new(new_stock8)
stock8.save
stock9 = Stock.new(new_stock9)
stock9.save
stock10 = Stock.new(new_stock10)
stock10.save
stock11 = Stock.new(new_stock11)
stock11.save
stock12 = Stock.new(new_stock12)
stock12.save
stock13 = Stock.new(new_stock13)
stock13.save
stock14 = Stock.new(new_stock14)
stock14.save
stock15 = Stock.new(new_stock15)
stock15.save
stock16 = Stock.new(new_stock16)
stock16.save
stock17 = Stock.new(new_stock17)
stock17.save
stock18 = Stock.new(new_stock18)
stock18.save
stock19 = Stock.new(new_stock19)
stock19.save
stock20 = Stock.new(new_stock20)
stock20.save
stock21 = Stock.new(new_stock21)
stock21.save
stock22 = Stock.new(new_stock22)
stock22.save
stock23 = Stock.new(new_stock23)
stock23.save
stock24 = Stock.new(new_stock24)
stock24.save
stock25 = Stock.new(new_stock25)
stock25.save
stock26 = Stock.new(new_stock26)
stock26.save
stock27 = Stock.new(new_stock27)
stock27.save
stock28 = Stock.new(new_stock28)
stock28.save
stock29 = Stock.new(new_stock29)
stock29.save
stock30 = Stock.new(new_stock30)
stock30.save
stock31 = Stock.new(new_stock31)
stock31.save
stock32 = Stock.new(new_stock32)
stock32.save
stock33 = Stock.new(new_stock33)
stock33.save
stock34 = Stock.new(new_stock34)
stock34.save
stock35 = Stock.new(new_stock35)
stock35.save
stock36 = Stock.new(new_stock36)
stock36.save
stock37 = Stock.new(new_stock37)
stock37.save
stock38 = Stock.new(new_stock38)
stock38.save
stock39 = Stock.new(new_stock39)
stock39.save
stock40 = Stock.new(new_stock40)
stock40.save

new_customer = {
  'name' => 'User',
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
