class UserProductGood < UserProduct
  before_save :calculate_cost

  def calculate_cost
    self.cost = qty * product.unit_price
  end
end
