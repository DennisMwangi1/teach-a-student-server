class Parent < ApplicationRecord
has_secure_password
belongs_to :student
has_many :requested_sessions
has_many :accepted_sessions
has_many :teachers, through: :accepted_sessions
has_many :teachers, through: :requested_sessions

validates :user_name, uniqueness:true
validates :password, presence:true
validates :email, email:true
end
