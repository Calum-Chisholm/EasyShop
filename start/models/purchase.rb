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

end
