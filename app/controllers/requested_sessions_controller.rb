class RequestedSessionsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :record_invalid_response
    def create
        $student_id = params[:student]
       
        # byebug
        request = RequestedSession.create!(request_params)
        $request = {
            start:params[:start_time],
            end:params[:end_time],
            date:params[:date],
            parent_id:params[:parent_id],
            request_id:request.id
        }

        render json: request, status: :ok
    end

    private

    def request_params
        params.permit(:start_time, :end_time, :date, :teacher_id, :parent_id)
    end

    def record_invalid_response(invalid)
        render json: {error:invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
