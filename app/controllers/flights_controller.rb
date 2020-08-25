class FlightsController < ApplicationController
  def new
  end

  def create
  end

  def index 
    respond_to do |format|
      format.html
      format.json { render :json => Flight.all }
    end
  end

  def get_reserves
    reserve = Reservation.find_by origin: params[:to], destination: params[:from]
    puts "RESERVE: #{reserve}"
    render :json => {
      reserve_data: reserve,
      flight_data: reserve.flight
    }
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
