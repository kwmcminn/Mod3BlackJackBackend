class User < ApplicationRecord
   has_many :hands
   after_initialize :init

   def init
      self.balance ||= 100
      self.save
   end
end
