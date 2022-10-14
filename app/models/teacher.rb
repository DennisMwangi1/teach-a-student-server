class Teacher < ApplicationRecord
has_secure_password
has_many :accepted_sessions
has_many :requested_sessions
has_many :students, through: :accepted_sessions
has_many :parents, through: :accepted_sessions
has_many :parents, through: :requested_sessions

validates :user_name, uniqueness:true
validates :password, presence:true
validates :email, email:true
end
