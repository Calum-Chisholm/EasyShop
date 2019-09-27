require_relative("../db/sql_runner")

class Merchant

  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO merchants (name) VALUES ($1) RETURNING id"
    values = [@name]
    merchant = SqlRunner.run(sql, values).first
    @id = merchant['id'].to_i
  end

  def update()
    sql = "UPDATE merchants SET name = $1
    WHERE id = $2"
    values = [@name, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM merchants where id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end


  def self.all()
    sql = "SELECT * FROM merchants"
    data = SqlRunner.run(sql)
    return data.map{|murchant| Merchant.new(murchant)}
  end

  def self.delete_all()
    sql = "DELETE FROM merchants"
    SqlRunner.run(sql)
  end

  def products()
    sql = "SELECT stock.*, products.* FROM stock
            INNER JOIN products
            ON products.id = stock.product_id
            INNER JOIN merchants
            on merchants.id = stock.merchant_id
            WHERE merchants.id = $1"
    values = [@id]
    products = SqlRunner.run(sql, values)
    return products.map {|product| Product.new(product)}
  end

  def self.find(id)
    sql = "SELECT * FROM merchants
    WHERE id = $1"
    values = [id]
    results = SqlRunner.run(sql, values)
    return Merchant.new(results.first)
  end

end
