class FlightsController < ApplicationController
  def new
  end

  def create
  end

  def index 
    respond_to do |format|
      format.html
      format.json { render :json Flight.all }
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
