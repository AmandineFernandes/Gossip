class User < ApplicationRecord
      has_many :gossips
      has_secure_password
      validates :email, presence: true, uniqueness: true
      validates :password, presence: true, length: { minimum: 6 }
end
