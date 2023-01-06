class User < ApplicationRecord
    has_secure_password
    has_many :purchases
    has_many :games, through: :purchases
   # validates :username, presence: true, uniqueness: true, length: {in: 5..20}
    validates :password, presence: true, length: {in: 1..3}
    validates :email, presence: true, uniqueness: true
end
