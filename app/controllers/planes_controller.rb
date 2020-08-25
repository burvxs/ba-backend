class PlanesController < ApplicationController
  def new
  end

  def create
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
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
        seat_data: plane.get_seats
      }
    }
  end
end
