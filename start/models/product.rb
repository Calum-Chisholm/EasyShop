require_relative("../db/sql_runner")

class Product
  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO products (name) VALUES ($1) RETURNING id"
    values = [@name]
    product = SqlRunner.run(sql, values).first
    @id = product['id'].to_i
  end

  def update()
    sql = "UPDATE products SET name = $1
    WHERE id = $2"
    values = [@name, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM products WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM products"
    data = SqlRunner.run(sql)
    return data.map{|product| Product.new(product)}
  end

  def self.delete_all()
    sql = "DELETE FROM products"
    SqlRunner.run(sql)
  end

end
