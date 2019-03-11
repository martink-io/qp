class UserProductService < UserProduct
  ALLOWED_DAYS = ['Monday',
                  'Tuesday',
                  'Wednesday',
                  'Thursday',
                  'Friday',
                  'Saturday'].freeze

  validates_presence_of :qty, :recurring_on, :start_time, :end_time
  validates_datetime :end_time, :after => :start_time 
  validates_time :start_time, :on_or_after => '9:00am', 
    :on_or_after_message => 'must be at/after 9am'
  validates_time :end_time, :on_or_before => '7:00pm',
    :before_message => 'must be at/before 7pm'
  validates_inclusion_of :recurring_on, in: ALLOWED_DAYS

  before_save :calculate_cost

  def hours
    hours = (end_time - start_time) / 3600
  end

  def calculate_cost
    self.cost = hours * qty * product.unit_price
  end
end
