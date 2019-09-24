class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :description, :needed_skillset, :snippet, :comments, :user, :userprojects
  # has_many :users
  has_many :userprojects
  belongs_to :user
  has_many :events
end
