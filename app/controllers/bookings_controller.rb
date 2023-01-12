class BookingsController < ApplicationController
  #before_action :set_booking, only: [:show, :update, :destroy ]
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  
  # GET /bookings
  def index
    bookings = Booking.all
    render json: bookings
  end

  # GET /bookings/1
  def show
    booking = find_booking
    render json: booking
  end

  # POST /bookings
  def create
    booking = Booking.create(booking_params)
    if booking
      render json: booking, status: :created
    else
      render json: booking.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookings/1
  def update
    booking = find_booking
    if booking.update(booking_params)
      render json: booking
    else
      render json: booking.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookings/1
  def destroy
    booking = find_booking
    booking.destroy
    head :no_content
  end

  private
    def find_booking
        Booking.find(params[:id])
    end

    def booking_params
      params.permit(:customer_id, :vehicle_id, :seat_id)
    end

    def render_not_found_response
        render json: {error:"Booking not found!"}.to_json,status: :not_found
    end
end
