class RoutesController < ApplicationController
      rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
      def index
        route=Route.all
        render json: route, status: :ok
      end
    
      def show
        route=Route.find_by(id:params[:id])
        if route
        render json: route, status: :ok
        else
        render json: {error: "Route not Found"}, status: :unauthorized
        end

      end
    
      def create
        route=Route.create(route_params)
        render json: route, status: :created
      end
    
      def update
        route = find_route
      if route.update(route_params)
        render json: route
      else
        render json: route.errors, status: :unprocessable_entity
      end
    end
    
      def destroy
        route=Route.find_by(id: params[:id])
        route.destroy
        head :no_content
      end
    
      private
    
      def route_params
        params.permit(:From_location, :To_location, :Price)
      end
    
      def find_route
        Route.find(params[:id])
      end
    
      def render_not_found_response
        render json: {error:"Route not found!"}.to_json,status: :not_found
      end
    

end
