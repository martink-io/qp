class UserProductService < UserProduct
  before_save :calculate_cost

  def hours
    hours = (end_time - start_time) / 3600
  end

  def calculate_cost
    self.cost = hours * qty * product.unit_price
  end
end
