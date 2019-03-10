class AddLengthToUserProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :user_products, :length, :integer
  end
end
