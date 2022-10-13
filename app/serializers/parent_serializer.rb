class ParentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :user_name, :email, :id_number, :location 
  belongs_to :student
  has_many :requests
has_many :teachers, through: :requests
end
