require_relative("../db/sql_runner")


class Purchase

  attr_accessor :stock_id, :customer_id, :quantity
  attr_reader :id

  def initialize(details)
    @stock_id = details['stock_id']
    @customer_id = details['customer_id']
    @quantity = details['quantity']
  end

  def save()
    sql = "INSERT INTO purchases (stock_id, customer_id, quantity) VALUES ($1, $2, $3) RETURNING id"
    values = [@stock_id, @customer_id, @quantity]
    id = SqlRunner.run(sql, values).first
    @id = id['id'].to_i
  end

  def update()
    sql = "UPDATE purchases SET (stock_id, customer_id, quantity) = ($1, $2, $3)
    WHERE id = $4"
    values = [@stock_id, @customer_id, @quantity, @id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM purchases"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM purchases where id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM purchases"
    data = SqlRunner.run(sql)
    return data.map{|purchase| Purchase.new(purchase)}
  end

  def purchased_product
    sql = "SELECT products.* FROM products
            INNER JOIN stock
            ON products.id = stock.product_id
            INNER JOIN purchases
            ON stock.id = purchases.stock_id
            WHERE purchases.stock_id = $1"
    values = [@stock_id]
    hash = SqlRunner.run(sql, values)
    return hash.map { |item| Product.new(item)}
  end


end
