class UserProductSubscription < UserProduct
  before_save :set_qty
  before_save :calculate_cost
  
  def set_qty
    self.qty = (start_date.to_datetime..end_date.to_datetime).count {|date| (1..5).include?(date.wday) }
  end

  def calculate_cost
    self.cost = qty * product.unit_price
  end
end
