class SeatsController < ApplicationController
  #before_action :set_seat, only: %i[ show update destroy ]
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  # GET /seats
  def index
    seats = Seat.all
    render json: seats
  end

  # GET /seats/1
  def show
    seat = find_seat
    render json: seat
  end

  def create
    seat = Seat.create(seat_params)
    render json: seat, status: :created
  end

  
  # PATCH/PUT /seats/1
  def update
    seat = find_seat
    if seat.update(seat_params)
      render json: seat
    else
      render json: {errors: "Seat not found"}, status: :unprocessable_entity
    end
  end

  # DELETE /seats/1
  def destroy
    seat = find_seat
    seat.destroy
    head :no_content
  end



  private
    def find_seat
      Seat.find(params[:id])
    end

    def seat_params
      params.permit(:seat_no, :status)
    end

    def render_not_found_response
        render json: {error: "Seat not found"}
    end
end


