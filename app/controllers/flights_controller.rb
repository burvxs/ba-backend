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

skip_before_action :verify_authenticity_token, raise: false

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
    date = params[:date].split("-").join("/")
    flights = Flight.where origin: params[:to], destination: params[:from], date: date
    puts "ORIGIN: #{params[:from]} DESTINATION: #{params[:to]}"
    if flights.present?
      render :json => {
        flight_data: flights,
        no_result: false
      }
    else
      render :json => {
        no_result: true,
        fail_text: "No flight results"
      }
    end
  end

  def get_origins_destinations
    origin_array = []
    destination_array = []

    Flight.all.each do |fl|
      origin_array << fl.origin
      destination_array << fl.destination
    end

      render :json => {
        origins: origin_array.uniq,
        destinations: destination_array.uniq
      }
  end
    def set_seat_data
    flight = Flight.find params[:id]
    seat_data = params[:seat]
    puts "SEATSSSS: #{flight.seats}"
    puts "INDEX: #{params[:index]}"
    flight.seats[params[:index]].update reservee: seat_data["reservee"], is_reserved: seat_data["is_reserved"]
    flight.save
    render :json => {
        seat_data: flight.seats 
    }
  end

=begin
    This method renders JSON plane data to be captured
    by the front-end. React will loop over every seat object
    and style the grid item based on the "plane.get_seats" method
    call which returns a hash of seat info like: is_reserved and reservee
=end
  def seats
    flight = Flight.find params[:id]
    render :json => {
      :flight_data => {
        rows: flight.plane.rows,
        columns: flight.plane.columns,
        seat_data: flight.seats 
      }
    }
  end

  def static_seats
    flight = Flight.find params[:id]
    render json: {
      seat_data: flight.seats
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
