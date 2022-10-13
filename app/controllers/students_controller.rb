class StudentsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response
     rescue_from ActiveRecord::RecordInvalid, with: :record_invalid_response
    def index
        students=Student.all
        render json:students, include: :parent
    end

    def show
        student=Student.find_by(id:session[:student_id])
        if student
        render json: student, include: :parent, status: :ok, method: :fullname
        else
        render json:{error:"Not authorized"},status: :unauthorized
        end
    end

    def create
        student = Student.create!(student_params)
        session[:student_id]=student.id
        render json:student, status: :created
    end



    private

    def record_not_found_response(not_found)
        render json: {error:not_found}, status: :not_found
    end

    def record_invalid_response(invalid)
        render json: {error:invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def student_params
        params.permit(:first_name,:last_name,:user_name,:school,:form,:avg_grade,:trgt_grade,:password,:password_confirmation)
    end
end
