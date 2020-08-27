class PlanesController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false

  # CREATE ############################################
  def new
    @plane = Plane.new
  end

  def create
    @plane = Plane.new plane_params
    @plane.save
    redirect_to planes_path
  end

  # READ ###########################################
  def index
    @planes = Plane.all
  end

  def show
    @plane = Plane.find params[:id] #instance variable
  end

# UPDATE ####################################
  def edit
    @plane = Plane.find params[:id]
  end

  def update
    plane = Plane.find params[:id]

    plane.update plane_params

    redirect_to plane_path
  end

  def destroy
    plane = Plane.find params[:id]
    plane.destroy
    redirect_to planes_path
  end

  def set_seat_data
    plane = Plane.find params[:id]
    seat_data = params[:seats]
    plane.set_seats seat_data

    render :json => {
        seat_data: plane.get_seats,
        plane_data: plane
    }
  end
=begin
    This method renders JSON plane data to be captured 
    by the front-end. React will loop over every seat object 
    and style the grid item based on the "plane.get_seats" method
    call which returns a hash of seat info like: is_reserved and reservee
=end
  def seats
    plane = Plane.find params[:id]
    render :json => {
      :plane_data => {
        rows: plane.rows,
        columns: plane.columns,
        seat_data: plane.new_seats
      }
    }
  end
  
  private

  def plane_params
    params.require( :plane ).permit( :name, :rows, :columns  )
  end
end
