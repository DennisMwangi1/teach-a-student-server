class Teacher < ApplicationRecord
has_secure_password
has_many :sessions
has_many :requests
has_many :students, through: :sessions
has_many :parents, through: :requests
end
