class DestinationsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method

    # before_action :authorize

    def index
        destinations = Destination.all
        render json: destinations
    end

    def show
        destination = find_destinations
        render json: destination
    end

    def update
        destination = find_destinations
        destination.update!(destination_params)
        render json: description
    end

    def create
        des = Destination.create(d_params)
        render json: des, status: :created
    end

    def destroy
        destination = Destination.find(params[:id])
        destination.destroy
        head :no_content
    end

    def create
        des = Destination.create(d_params)
        render json: des, status: :created
    end

    private

    def find_destinations
        Destination.find(params[:id])
    end

    def d_params
        params.permit(:title, :image_url, :site_url, :description)
    end

    def destination_params
        params.permit(:tittle, :image_url, :description)
    end

    def record_not_found_method
        render json: {error: "Destination not found"}, status: :not_found
    end

    def authorize
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
    end

    def d_params
        params.permit(:title, :image_url, :site_url, :description)
    end
end
