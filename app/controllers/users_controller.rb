class UsersController < ApplicationController
  skip_before_action :authenticate_user, only: [:create]

  def create
  	@user = User.new(user_params)
  	if @user.save
  		render json: @user, status: 201
  	else
  		render json: {errors: @user.errors.full_messages}, status: 503
  	end

  end

  private 

  def user_params
  	params.permit(:user_name, :name, :email, :password)
  end	

  def find_user
  	@user = User.find(params[:id])
  end	
end
