class SaccosController < ApplicationController
  #before_action :set_sacco, only: [:create, :show, :destroy ]
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  # GET /saccos
  def index
    saccos = Sacco.all
    render json: saccos, status: :ok
  end

  # GET /saccos/1
  def show
    sacco = find_sacco
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
      session[:sacco_id] = sacco.id
      render json: sacco, status: :created
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end

  # PATCH/PUT /saccos/1
   def update
        sacco = find_sacco
        sacco.update!(sacco_params)
        render json:sacco,status: :ok        
      end
  end

  

  private
    def sacco_params
      params.permit(:name, :email, :password, :image_url)
    end

   def find_sacco
        Sacco.find(params[:id])
      end

    def render_not_found_response
       render json: {error:"Sacco not found!"}, status: :not_found
    end 

