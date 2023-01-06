class SaccosController < ApplicationController
  before_action :set_sacco, only: %i[ show update destroy ]

  # GET /saccos
  def index
    saccos = Sacco.all

    render json: saccos
  end

  # GET /saccos/1
  def show
    render json: sacco
  end

  # POST /saccos
  def create
    sacco = Sacco.new(sacco_params)

    if sacco.save
      render json: sacco, status: :created, location: @sacco
    else
      render json: sacco.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /saccos/1
  def update
    if sacco.update(sacco_params)
      render json: sacco
    else
      render json: sacco.errors, status: :unprocessable_entity
    end
  end

  # DELETE /saccos/1
  def destroy
    sacco.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sacco
      sacco = Sacco.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sacco_params
      params.require(:sacco).permit(:name, :image_url)
    end
end
