class UserProductSubscription < UserProduct
  before_save :calculate_cost

  def calculate_cost

    total_working_days = (start_date.to_datetime..end_date.to_datetime).count {|date| (1..5).include?(date.wday) }
    price  = product.unit_price
    self.cost = total_working_days * price
  end
end
