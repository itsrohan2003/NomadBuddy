class BookingsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method
    #before_action :authorize
    
    def index
        bookings = Booking.all
        render json: bookings
    end

    def show 
        booking = find_bookings
        render json: booking
    end
    def create
        booking = Booking.create(booking_params)
        render json: booking, status: :created
    end
    # def create
    #     booking = Booking.create(booking_params)
    #     if booking.valid?
    #         render json: booking, status: :created
    #     else
    #         render json: booking.errors.full_messages 
    #     end
        
    # end

    private

    def booking_params
        params.permit(:fullname, :destination_name, :date)
    end

    def record_not_found_method
        render json: {error: "Booking not found"}, status: :not_found
    end

    def authorize
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
    end

    def find_bookings
        Booking.find(params[:id])
    end
end
