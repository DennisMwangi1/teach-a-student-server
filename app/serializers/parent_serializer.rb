class ParentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :user_name, :email, :id_number, :location, :student_id, :password_digest
  has_one :student
end
