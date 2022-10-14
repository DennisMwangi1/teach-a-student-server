class RequestedSessionSerializer < ActiveModel::Serializer
   attributes :id, :start_time, :end_time, :date, :teacher_id, :parent_id
end
