class AddColumnToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :pickup_date, :integer
    add_column :orders, :cost, :integer
    add_column :orders, :note, :string
  end
end
