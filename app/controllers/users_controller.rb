class UsersController < ApplicationController

# CREATE ###########################
  def new
    @user = User.new
  end

  def create
  end

  # READ #############################
  def index
    @users = User.all
  end

  def show
  end

# UPDATE #############################
  def edit
  end

  def update
  end

# DESTROY #############################
  def destroy
  end

  private

    def user_params
      params.require( :user ).permit( :name, :admin )
    end
end
