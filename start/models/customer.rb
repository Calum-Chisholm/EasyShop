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

end
