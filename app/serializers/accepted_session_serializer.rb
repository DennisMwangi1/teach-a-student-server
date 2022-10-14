class AcceptedSessionSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :end_time, :date, :teacher_id
end
