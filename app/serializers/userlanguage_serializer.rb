class UserlanguageSerializer < ActiveModel::Serializer
  attributes :id, :level
  has_one :user
  has_one :language
end
