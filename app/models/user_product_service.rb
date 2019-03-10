class UserProductService < UserProduct
  before_save :calculate_cost

  def calculate_cost
    total_hours = (end_time - start_time) / 3600
    self.cost = total_hours * qty * product.unit_price
  end
end
