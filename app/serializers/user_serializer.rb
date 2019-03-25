class UserSerializer < ActiveModel::Serializer
  attributes :id, :balance, :username

  has_many :hands 
end
