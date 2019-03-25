class HandSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :winner, :bet_amount
  
  belongs_to :user
end
