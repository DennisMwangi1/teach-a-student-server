class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :user_name, :school, :form, :avg_grade, :trgt_grade
  has_one :parent
  has_many :accepted_sessions
  has_many :teachers, through: :accepted_sessions
 

end
