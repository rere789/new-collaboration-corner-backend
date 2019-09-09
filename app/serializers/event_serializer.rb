class EventSerializer < ActiveModel::Serializer
    attributes :id, :post_id, :title, :start, :end
    # has_many :users
    belongs_to :post_id
  end