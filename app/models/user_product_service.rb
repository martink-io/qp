class UserProductService < UserProduct
  validates_datetime :end_time, :after => :start_time 
  
  validates_time :start_time, :on_or_after => '9:00am', 
    :on_or_after_message => 'must be at/after 9am'
  
  validates_time :end_time, :on_or_before => '7:00pm',
    :before_message => 'must be at/before 7pm'
  
  validate :mon_to_sat

  before_save :calculate_cost

  def mon_to_sat
    return unless recurring_on == 'Sunday'
    errors[:recurring_on] << "We do not provide services on Sunday"
  end

  def hours
    hours = (end_time - start_time) / 3600
  end

  def calculate_cost
    self.cost = hours * qty * product.unit_price
  end
end
