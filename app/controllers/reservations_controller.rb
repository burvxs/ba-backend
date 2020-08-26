class ReservationsController < ApplicationController
  # CREATE ############################################
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new reservation_params
    redirect_to reservations_path
  end

  # READ ###########################################
  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find params[:id] #instance variable
  end

# UPDATE ####################################
  def edit
    @reservation = Reservation.find params[:id]
  end

  def update
    reservation = Reservation.find params[:id]

    reservation.update reservation_params

    redirect_to reservation_path
  end

  def destroy
    reservation = Reservation.find params[:id]
    reservation.destroy
    redirect_to reservations_path
  end

  private

  def reservation_params
    params.require( :reservation ).permit( :origin, :destination, :date  )
  end

end
