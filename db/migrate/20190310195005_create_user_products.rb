class CreateUserProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :user_products do |t|
      t.integer :quotation_id
      t.string :type
      t.date :start_date
      t.date :end_date
      t.integer :recurring_on
      t.time :start_time
      t.time :end_time
      t.integer :qty
      t.float :cost
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
