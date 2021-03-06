class OrderSerializer < ActiveModel::Serializer
  attributes :id, :date, :pick_up_time, :pickup_date, :location, :cost, :note
  belongs_to :customer
  has_many :items
end
