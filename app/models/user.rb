class User < ApplicationRecord
    has_secure_password
  validates :username, uniqueness: { case_sensitive: false }, presence: true 
  has_many :userprojects
  has_many :posts, through: :userprojects
  
end
 