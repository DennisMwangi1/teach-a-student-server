class Parent < ApplicationRecord
has_secure_password
belongs_to :student
has_many :requests
has_many :teachers, through: :requests

validates :user_name, uniqueness:true
validates :password, presence:true
validates :email, email:true
end
