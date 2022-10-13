class StudentsessionsController < ApplicationController
    def create
        student = Student.find_by(user_name:params[:user_name])
        if student &. authenticate(params[:password])
            session[:student_id]=student.id
            render json: student, except:[:password_digest], status: :ok
        else
            render json: {error:"Invalid username or password"}, status: :unauthorized
        end
    end

    def destroy
        session.delete :student_id
        head :no_content
    end
end
