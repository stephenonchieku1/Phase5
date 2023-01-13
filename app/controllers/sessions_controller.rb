class SessionsController < ApplicationController

    def customer_login
        customer = Customer.find_by(email: params[:email])
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

    def sacco_login
        sacco = Sacco.find_by(email: params[:email])
        if sacco&.authenticate(params[:password])
            session[:sacco_id] = sacco.id
            render json: sacco, status: :created
        else
            render json: {error: "Invalid email or password"}.to_json, status: :unauthorized
        end
    end


    def sacco_logout
        session.delete :sacco_id
        head :no_content
    end
end
 