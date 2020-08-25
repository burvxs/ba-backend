class FlightsController < ApplicationController
  def new
  end

  def create
  end

  def index
    respond_to do |format|
<<<<<<< HEAD
      format.html { @flights = Flight.all }
      format.json { render :json Flight.all }
=======
      format.html
      format.json { render :json => Flight.all }
>>>>>>> 35687df57cf50cad1e14f73ef705038736f96d20
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
