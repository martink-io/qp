class UserProductService < UserProduct
  before_save :calculate_cost

  def calculate_cost
    hours = (end_time - start_time) / 3600
    self.cost = hours * qty * product.unit_price
  end
end
