class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :credit_card
end
