class AddColumnToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :name, :string
    add_column :items, :price, :integer
    add_column :items, :description, :string
    add_column :items, :image, :string
  end
end
