class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :user_name, :school, :form, :avg_grade, :trgt_grade, :password_digest
end
