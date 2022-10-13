class ParentsController < ApplicationController
 rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response
 rescue_from ActiveRecord::RecordInvalid, with: :record_invalid_response
 rescue_from ActiveRecord::RecordNotUnique, with: :record_not_unique_response
    def index
        parents=Parent.all
        render json:parents, include: :student
    end

    def show
        parent=Parent.find_by!(id: params[:id])
        render json: parent, include: :student, status: :ok
    end

    def create
    # byebug
    @user = Parent.create!(parent_params)
    @student=Student.find_by(id:params[:student_id])
      if @user
        RegisterMailer.with(user: @user,student:@student, code: @code).welcome_email.deliver_now
        render json:@user, status: :created
    end

  end



    private

    def parent_params
        params.permit(:first_name, :last_name, :user_name, :email, :id_number, :location, :password, :password_confirmation, :student_id)
    end


    def record_not_found_response
        render json: {error:"Record not found"}, status: :not_found
    end

    def record_invalid_response(invalid)
        render json: {error:invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def record_not_unique_response(not_unique)
        render json: {error:["Student already has a Parent.Try Logging in instead"]}, status: :unprocessable_entity
    end
end
