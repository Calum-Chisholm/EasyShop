require_relative("../db/sql_runner")

class Customer

  attr_accessor :name, :wallet
  attr_reader :id

  def initialize(details)
    @id = details['id'].to_i if details['id']
    @name = details['name']
    @wallet = details['wallet']
  end

  def save()
    sql = "INSERT INTO customers (name, wallet) VALUES ($1, $2) RETURNING id"
    values = [@name, @wallet]
    id = SqlRunner.run(sql, values).first
    @id = id['id'].to_i
  end

  def update()
    sql = "UPDATE customers SET (name, wallet, stock_id) = ($1, $2)
    WHERE id = $4"
    values = [@name, @wallet, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM customers WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM customers"
    data = SqlRunner.run(sql)
    return data.map{|customer| Customer.new(customer)}
  end

  def purchases()
    sql = "SELECT stock.*, purchases.* FROM stock
          INNER JOIN products
          ON products.id = stock.product_id
          INNER JOIN merchants
          on merchants.id = stock.merchant_id
          INNER JOIN purchases
          ON stock.id = purchases.stock_id
          WHERE purchases.customer_id = $1"
    values = [@id]
    purchase_hashes = SqlRunner.run(sql, values)
    return purchase_hashes.map { |purchases| Purchase.new(purchases)}
  end

end
