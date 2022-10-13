class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :user_name, :age, :email, :campus, :id_number, :strong_subjects, :location, :campus_year
  has_many :students, through: :sessions
  has_many :parents, through: :requests
end
