class UserProductGood < UserProduct
  before_save :calculate_cost

  validates_presence_of :qty

  def calculate_cost
    self.cost = qty * product.unit_price
  end
end
