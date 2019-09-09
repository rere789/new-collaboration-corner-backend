class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :img, :skillset, :school, :posts
  has_many :userprojects
  has_many :posts
end
