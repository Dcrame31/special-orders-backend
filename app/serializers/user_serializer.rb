class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest
  has_many :customers
  has_many :orders, through: :customers
end
