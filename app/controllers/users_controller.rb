class UsersController < ApplicationController

# CREATE ###########################
  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    redirect_to users_path
  end

  # READ #############################
  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

# UPDATE #############################
  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]

    user.update user_params

    redirect_to user_path
  end

# DESTROY #############################
  def destroy
    user = User.find params[:id]
    user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require( :user ).permit( :name, :admin )
  end

end # UsersController
