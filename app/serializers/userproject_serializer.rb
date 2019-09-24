class UserprojectSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :interested, :comment,:collaborating, :user, :post
  has_one :user_id
  has_one :post_id
end
