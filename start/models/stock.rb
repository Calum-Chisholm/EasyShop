require_relative("../db/sql_runner")

class Stock

  attr_accessor :product_id, :merchant_id, :price
  attr_reader :id

  def initialize(details)
    @id = details['id'].to_i if details['id']
    @product_id = details['product_id']
    @merchant_id = details['merchant_id']
    @price = details['price']
  end

  def save()
    sql = "INSERT INTO stock (product_id, merchant_id, price) VALUES ($1, $2, $3) RETURNING id"
    values = [@product_id, @merchant_id, @price]
    id = SqlRunner.run(sql, values).first
    @id = id['id'].to_i
  end

  def update()
    sql = "UPDATE stock SET (product_id, merchant_id, price) = ($1, $2, $3)
    WHERE id = $4"
    values = [@product_id, @merchant_id, @price, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM stock WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM stock"
    data = SqlRunner.run(sql)
    return data.map{|stock| Stock.new(stock)}
  end

  def self.delete_all()
    sql = "DELETE FROM stock"
    SqlRunner.run(sql)
  end

  def self.find_by_merchant(id)
    sql = "SELECT * FROM stock
    WHERE merchant_id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    return Stock.new(results.first)
  end

end
