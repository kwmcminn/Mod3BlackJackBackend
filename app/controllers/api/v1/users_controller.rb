class Api::V1::UsersController < ApplicationController

   before_action :set_user, only: [:update, :show]

   def show
      render json: @user
   end

   def create
     @user = User.find_or_create_by(user_params)
     render json: @user
   end

   def update
      bet_amount = user_params["bet_amount"]
      @user.update(balance: @user.balance - bet_amount)
     if @user.save
        render json: @user, status: :accepted
      else
         render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
      end
   end


   private

     def user_params
       params.permit(:id, :balance, :bet_amount)
     end

     def set_user
       @user = User.find(params[:id])
     end
end
