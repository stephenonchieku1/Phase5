class CustomersController < ApplicationController
    skip_before_action :authorize, only: :create

        def index
            customer=Customer.all
            render json: customer, status: :ok
        end        
        
        def show
            customer = Customer.find_by(id: params[:id])
            if customer             
            render json: customer, status: :created
            else
            render json: {error: "Not authorized"}, status: :unauthorized
            end   
        end   
        
        def create 
            customer= Customer.create(customer_params)           
             #session[:sacco_id] = sacco.id
            render json: customer, status: :created        
        end
      

        private 
        
        def customer_params
        params.permit(:name, :email, :password)
        end
end
