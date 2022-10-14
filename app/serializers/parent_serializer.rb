class ParentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :user_name, :email, :id_number, :location 
  belongs_to :student
   has_many :accepted_sessions
  has_many :requested_sessions

  has_many :teachers, through: :requested_sessions
  # has_many :teachers, through: :accepted_sessions
end
