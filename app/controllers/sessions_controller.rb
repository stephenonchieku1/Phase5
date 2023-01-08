class SessionsController < ApplicationController
    def create
        customer = Customer.find_by(email: params[:email])
        session[:customer_id] = customer.id
        render json: customer
    end
    def customer_login
        customer = customer.find_by(email: params[:email])
        if customer&.authenticate(params[:password])
            session[:customer_id] = customer.id
            render json: customer, status: :created
        else
            render json: {error: "Invalid email or password"}.to_json, status: :unauthorized
        end
    end

    def customer_logout
        session.delete :customer_id
        head :no_content
    end
end
