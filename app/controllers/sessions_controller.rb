class SessionsController < ApplicationController
    def create
        customer = Customer.find_by(email: params[:email])
        session[:customer_id] = customer.id
        render json: customer
    end

    def create
        sacco = Sacco.find_by(email:params[:email])
        #if sacco = sacco.authenticate(params[:password_digest])
            sessions[:sacco_id] = sacco.id
            render json: sacco
        #else
            #render json: {status: :unauthorised, message: 'Email or password is incorrect.'}
        #end
    end
end
