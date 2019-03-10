class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.string :unit
      t.float :unit_price

      t.timestamps
    end
  end
end
