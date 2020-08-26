class FlightsController < ApplicationController
#   def new
#   end
#
#   def create
#   end
#
#   def index
#     respond_to do |format|
# <<<<<<< HEAD
#       format.html { @flights = Flight.all }
#       format.json { render :json Flight.all }
# =======
#       format.html
#       format.json { render :json => Flight.all }
# >>>>>>> 35687df57cf50cad1e14f73ef705038736f96d20
#     end
#   end
#
#   def show
#   end
#
#   def edit
#   end
#
#   def update
#   end
#
#   def destroy
#   end
# end

# CREATE ###########################
  def new
    @flight = Flight.new
  end

  def create
    @flight = Flight.create flight_params
    redirect_to flights_path
  end

  # READ #############################
  def index
    @flights = Flight.all
  end

  def get_reserves
    flight = Flight.find_by origin: params[:to], destination: params[:from]

    render :json => {
      reserve_data: flight.reservations,
      flight_data: flight
    }
  end

  def show
    @flight = Flight.find params[:id]
  end

# UPDATE #############################
  def edit
    @flight = Flight.find params[:id]
  end

  def update
    flight = Flight.find params[:id]

    flight.update flight_params

    redirect_to flight_path
  end

# DESTROY #############################
  def destroy
    flight = Flight.find params[:id]
    flight.destroy
    redirect_to flights_path
  end

  private

  def flight_params
    params.require( :flight ).permit( :flight_number, :origin, :destination, :date )
  end

end # FlightsController
