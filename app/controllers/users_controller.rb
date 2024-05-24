class UsersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method

    def index
        users = User.all
        render json: users
    end

    def show
        user = find_user
        if user
          render json: user
        else
          render json: { error: "Not authorized" }, status: :unauthorized
        end
    end

    def create
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: { error: user.errors.full_messages },status: :unprocessable_entity
        end
        
    end

    private

    def record_not_found_method
        render json: {error: "Destination not found"}, status: :not_found
    end

    def find_user
        User.find_by(id: session[:user_id])
    end

    def user_params
        params.permit(:username, :fullname, :email, :password)
    end
end
