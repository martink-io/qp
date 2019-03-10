class CreateQuotations < ActiveRecord::Migration[5.2]
  def change
    create_table :quotations do |t|
      t.integer :u_id
      t.float :total_cost
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
