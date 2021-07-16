class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :credit_card
  belongs_to :user
  has_many :orders
  has_many :items, through: :orders
end
