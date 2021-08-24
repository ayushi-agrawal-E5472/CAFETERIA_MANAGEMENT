class User < ApplicationRecord
    has_secure_password
    has_many :orders
    has_many :carts
    validates :first_name, presence: true
    validates :email, presence: true
end