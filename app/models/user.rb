class User < ApplicationRecord
    has_many :blogs
    validates :name, presence: true
    validates :email, presence: true,
              format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
              validates :email, uniqueness: true
              before_validation { email.downcase! }
              has_secure_password
              validates :password, presence: true, length: { minimum:  6}
end
