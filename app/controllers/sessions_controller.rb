class SessionsController < ApplicationController
    def create
        customer = Customer.find_by(email: params[:email])
        session[:customer_id] = customer.id
        render json: customer
    end

    def create
        sacco = Sacco.find_by(email:params[:email])
        if sacco&.authenticate(params[:password])
            sessions[:sacco_id] = sacco.id
            render json: sacco, status: :created
        else
            render json: { errors: ["Invalid username or passsword"] }, status: :unauthorized
        end
    #end
end
