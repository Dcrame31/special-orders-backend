class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :image
  belongs_to :order
end
