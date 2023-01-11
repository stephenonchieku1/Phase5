class SaccosController < ApplicationController
  #before_action :set_sacco, only: %i[ show update destroy ]

  # GET /saccos
  def index
    saccos = Sacco.all
    render json: saccos, status: :ok
  end

  # GET /saccos/1
  def show
    sacco = Sacco.find_by(id: params[:id])
            if sacco             
            render json: sacco, status: :created
            else
            render json: {error: "Not authorized"}, status: :unauthorized
            end   
  end

  # POST /saccos
  def create
    sacco = Sacco.create(sacco_params)

    if sacco.valid?
      render json: sacco, status: :created
    else
      render json: {errors: user.error.full_messages} , status: :unprocessable_entity
    end
  end

  # PATCH/PUT /saccos/1
   def update
        sacco=Sacco.find_by(id: params[:id])
        sacco.update!(sacco_params)
        render json:sacco,status: :ok        
      end
  end

  # DELETE /saccos/1
    def destroy
    sacco =Sacco.find_by(id: params[:id])
    sacco.destroy
    head :no_content
    end    

  private
    # Only allow a list of trusted parameters through.
    def sacco_params
      params.permit(:name, :image_url)
    end

    def render_not_found_response
       render json: {error:"Sacco not found!"}, status: :not_found
    end 

