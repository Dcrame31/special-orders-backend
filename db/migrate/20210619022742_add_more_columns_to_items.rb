class AddMoreColumnsToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :order_id, :integer
  end
end
