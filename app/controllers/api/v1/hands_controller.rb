class Api::V1::HandsController < ApplicationController
   before_action :set_user, only: [:update, :show]

   def index
      @hands = Hand.all
      render json: @hands
   end
   
   def show
   end

   def create
     @hand = Hand.create(user_params)
     render json: @hand
  end


   private

     def user_params
       params.permit(:user_id, :winner, :bet_amount)
     end
end
