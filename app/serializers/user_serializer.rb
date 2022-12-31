class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :wallet
  has_many :games
end
