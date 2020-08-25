class UsersController < ApplicationController

# CREATE ###########################
  def new
    @user = User.new
  end

  def create
    @user = User.create user_params

    if @user.persisted?
        session[:user_id] = @user.id # log in the newly created account automatically!
        redirect_to users_path
      else
        render :new
      end
  end

  # READ #############################
  def index
    @users = User.all
  end

  def show
    @users = User.all
    @user = User.find params[:id]
  end

# UPDATE #############################
  def edit
  end

  def update
  end

# DESTROY #############################
  def destroy
    User.destroy params[:id]
    redirect_to users_path
  end

  private

  def user_params
    params.require( :user ).permit( :name, :admin )
  end

end # UsersController
