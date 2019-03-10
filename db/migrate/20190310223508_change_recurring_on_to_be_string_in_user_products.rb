class ChangeRecurringOnToBeStringInUserProducts < ActiveRecord::Migration[5.2]
  def change
    change_column :user_products, :recurring_on, :string
  end
end
