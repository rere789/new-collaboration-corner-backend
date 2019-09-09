class Post < ApplicationRecord
  belongs_to :user
  has_many :userprojects
  has_many :events
end
