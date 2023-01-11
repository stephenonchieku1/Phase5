class SeatsController < ApplicationController
  before_action :set_seat, only: %i[ show update destroy ]

  # GET /seats
  def index
    seats = Seat.all

    render json: seats
  end

  # GET /seats/1
  def show
    render json: seat
  end

  def create
    seat = Seat.create(seat_params)
    if seat.valid?
      render json: seat, status: :created
    else
      render json: {errors: user.error.full_messages} , status: :unprocessable_entity
    end
  end

  
  # PATCH/PUT /seats/1
  def update
    if seat.update(seat_params)
      render json: seat
    else
      render json: seat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /seats/1
  def destroy
    seat.destroy
  end

   #def book
    #seat = Seat.find(params[:id])
    #seat.booked = true
    #if seat.save
      #redirect_to vehicle_seats_path
    #else
      #render :edit
    #end
  #end


  private
    # Use callbacks to share common setup or constraints between actions.
   # def set_seat
     # seat = Seat.find(params[:id])
   # end

    # Only allow a list of trusted parameters through.
    def seat_params
      params.permit(:name, :status)
    end
end


