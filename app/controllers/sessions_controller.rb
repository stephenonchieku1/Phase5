class SessionsController < ApplicationController
    def create
        customer = Customer.find_by(email: params[:email])
        session[:customer_id] = customer.id
        render json: customer
    end
end
