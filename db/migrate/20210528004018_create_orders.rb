class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :date
      t.integer :pick_up_time
      t.string :location
    end
  end
end
