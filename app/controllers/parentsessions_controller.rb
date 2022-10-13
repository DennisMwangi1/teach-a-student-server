class ParentsessionsController < ApplicationController
    def create
        parent = Parent.find_by(user_name:params[:user_name])
        if parent &. authenticate(params[:password])
            session[:parent_id]=parent.id
            render json: parent, status: :ok
        else
            render json: {error:"Invalid username or password"}, status: :unauthorized
        end
    end

    def destroy
        session.delete :parent_id
        head :no_content
    end
end
