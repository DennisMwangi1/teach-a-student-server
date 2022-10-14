class Student < ApplicationRecord
has_secure_password
has_one :parent
has_many :accepted_sessions
has_many :teachers, through: :accepted_sessions

@grades = ["A","A-","B+","B","B-","C+","C","C-","D+","D","D-","E"]
validates :user_name, uniqueness:true
validates :password, presence:true
validates :avg_grade, inclusion: { in: @grades}
validates :trgt_grade, inclusion: { in:["A","A-","B+","B","B-","C+"] }
validates :form, inclusion: { in:[1,2,3,4] }
end
