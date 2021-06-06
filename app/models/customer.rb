class Customer < ApplicationRecord
    has_many :orders
    has_many :items, through: :orders
    belongs_to :user
end
