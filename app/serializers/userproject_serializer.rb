class UserprojectSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user, :post
  has_one :user_id
  has_one :post_id
end
