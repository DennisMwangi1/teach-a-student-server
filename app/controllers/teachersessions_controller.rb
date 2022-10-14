class TeachersessionsController < ApplicationController
    def create
     teacher = Teacher.find_by(user_name:params[:user_name])
        if teacher &. authenticate(params[:password])
            session[:teacher_id]=teacher.id
            render json: teacher, status: :ok
        else
            render json: {error:"Invalid username or password"}, status: :unauthorized
        end
    end

    def destroy
        session.delete :teacher_id
        head :no_content
    end
end
