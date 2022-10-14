class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :user_name, :age, :email, :campus, :id_number, :strong_subjects, :location, :campus_year
  has_many :students, through: :accepted_sessions
  has_many :parents, through: :accepted_sessions
  has_many :parents, through: :requested_sessions

  # has_many :accepted_sessions
  # has_many :requested_sessions
end
