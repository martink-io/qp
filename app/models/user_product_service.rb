class UserProductService < UserProduct
  before_save :set_qty
  before_save :calculate_cost

  def set_qty
    self.qty = (end_time - start_time) / 3600
  end

  def calculate_cost
    self.cost = qty * product.unit_price
  end
end
