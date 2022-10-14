class TeachersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response
 rescue_from ActiveRecord::RecordInvalid, with: :record_invalid_response
    def index
        teachers=Teacher.all
        render json:teachers
    end

    def show
        teacher=Teacher.find_by(id: session[:teacher_id])
        if teacher
        render json: teacher, status: :ok
        else
        render json:{error:"Not authorized"},status: :unauthorized
        end
    end

     def create
    # byebug
    @user = Teacher.create!(parent_params)
      if @user
        TeacherRegisterMailer.with(user: @user).teacher_welcome_email.deliver_now
        render json:@user, status: :created
    end
    end



    private

    def parent_params
        params.permit(:first_name, :last_name, :user_name,:age, :email,:campus, :id_number,:strong_subjects, :location,:campus_year, :password, :password_confirmation)
    end


    def record_not_found_response
        render json: {error:"Record not found"}, status: :not_found
    end

     def record_invalid_response(invalid)
        render json: {error:invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
