class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :moods
  has_many :activities
end
