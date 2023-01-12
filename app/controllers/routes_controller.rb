class RoutesController < ApplicationController
      def index
        routes=Route.all
        render json: routes
      end    
      def show
        route=Route.find_by(id: params[:id])     
        render json: route           
      end   
      def create
        route=Route.create(route_params)
        if route
         render json:route,  status: :created
        else
         render json: {error: "Not created!"}, status: :unprocessable_entity
        end
      end  
      def update
        route=Route.find_by(id: params[:id])
        route.update(route_params)
        render json:route
      end
      def destroy
        route =Route.find_by(id: params[:id])
        route.destroy
        head :no_content
      end    
      private
      def route_params
<<<<<<< HEAD
       params.require(:route).permit(:From_location, :To_location, :Price)
       # params.permit(:From_location, :To_location ,:Price)
=======
        params.require(:route).permit(:From_location, :To_location ,:Price)
>>>>>>> Daisy
      end
    
      def render_not_found_response
        render json: {error:"Event not found!"},status: :not_found
      end    
end
