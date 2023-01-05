class VehiclesController < ApplicationController
      def index
        vehicle=Vehicle.all
        render json: vehicle, status: :ok
      end
    
      def show
        vehicle=Vehicle.find_by(id:params[:id])
        if vehicle
        render json:vehicle, status: :ok
        else
        render json: {error: "Vehicle not Found"}, status: :unauthorized
        end
      end
    
      def create
        vehicle=Vehicle.create(vehicle_params)
        render json: vehicle, status: :created
      end
    
      def update
        vehicle=Vehicle.find_by(id:params[:id])
        vehicle.update(vehicle_params)
        render json:vehicle,status: :created
      end
    
      def destroy
        vehicle=Vehicle.find_by(id: params[:id])
        vehicle.destroy
        head :no_content
      end
    
      private
    
      def vehicle_params
        params.permit(:vehicle_name,:route_id,:departure_time,:arrival_time,:no_of_seats,:image, :sacco_id)
      end
    
      def find_vehicle
        Vehicle.find(params[:id])
      end
    
      def render_not_found_response
        render json: {error:"Event not found!"}.to_json,status: :not_found
      end
    

end
