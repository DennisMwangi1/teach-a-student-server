class TeachersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response
    def index
        teachers=Teacher.all
        render json:teachers
    end

    def show
        teacher=Teacher.find_by(id: params[:id])
        render json: teacher, status: :ok
    end



    private

    def record_not_found_response
        render json: {error:"Record not found"}, status: :not_found
    end
end
