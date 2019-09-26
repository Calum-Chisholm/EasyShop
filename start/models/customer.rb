require_relative("../db/sql_runner")

class Customer

  attr_accessor :name, :wallet, :stock_id
  attr_reader :id

  def initialize(details)
    @id = details['id'].to_i if details['id']
    @name = details['name']
    @wallet = details['wallet']
    @stock_id =details['stock_id']
  end

  def save()
    sql = "INSERT INTO customers (name, wallet, stock_id) VALUES ($1, $2, $3) RETURNING id"
    values = [@name, @wallet, @stock_id]
    id = SqlRunner.run(sql, values).first
    @id = id['id'].to_i
  end

  def update()
    sql = "UPDATE customers SET (name, wallet, stock_id) = ($1, $2, $3)
    WHERE id = $4"
    values = [@name, @wallet, @stock_id, @id]
    SqlRunner.run(sql, values)
  end

end
