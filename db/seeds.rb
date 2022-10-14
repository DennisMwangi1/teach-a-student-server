# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
grades=["A","A-","B+","B","B-","C+","C","C-","D+","D","D-","E"]
target=["A","A-","B+","B","B-","C+"]
puts "seeding database"


    s1=Student.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, user_name:Faker::FunnyName.name, school:Faker::University.name, form:rand(1..4),avg_grade:grades.sample, trgt_grade:target.sample, password:"1234",password_confirmation:"1234",)
    s2=Student.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, user_name:Faker::FunnyName.name, school:Faker::University.name, form:rand(1..4),avg_grade:grades.sample, trgt_grade:target.sample, password:"1234",password_confirmation:"1234",)
    s3=Student.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, user_name:Faker::FunnyName.name, school:Faker::University.name, form:rand(1..4),avg_grade:grades.sample, trgt_grade:target.sample, password:"1234",password_confirmation:"1234",)
    s4=Student.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, user_name:Faker::FunnyName.name, school:Faker::University.name, form:rand(1..4),avg_grade:grades.sample, trgt_grade:target.sample, password:"1234",password_confirmation:"hello",)
    
    p1=Parent.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, user_name:Faker::FunnyName.name, email:"dennismwangi14030@gmail.com",id_number:Faker::IDNumber.brazilian_id,location:Faker::Address.city, password:"5678",password_confirmation:"5678",student_id:s1.id)
    p2=Parent.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, user_name:Faker::FunnyName.name, email:"dennismwangi14030@gmail.com",id_number:Faker::IDNumber.brazilian_id,location:Faker::Address.city, password:"5678",password_confirmation:"5678",student_id:s2.id)
    p3=Parent.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, user_name:Faker::FunnyName.name, email:"dennismwangi14030@gmail.com",id_number:Faker::IDNumber.brazilian_id,location:Faker::Address.city, password:"5678",password_confirmation:"5678",student_id:s3.id)
    p4=Parent.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, user_name:Faker::FunnyName.name, email:"dennismwangi14030@gmail.com",id_number:Faker::IDNumber.brazilian_id,location:Faker::Address.city, password:"5678",password_confirmation:"5678",student_id:s4.id)



   
    t1=Teacher.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, user_name:Faker::FunnyName.name, email:"dennismwangi14030@gmail.com", age:rand(18..26), campus:Faker::University.name, strong_subjects:["mathematics","english","computer","physics"], campus_year:rand(1..4), id_number:Faker::IDNumber.brazilian_id,location:Faker::Address.city, password:"5678",password_confirmation:"5678")    
    t2=Teacher.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, user_name:Faker::FunnyName.name, email:"dennismwangi14030@gmail.com", age:rand(18..26), campus:Faker::University.name, strong_subjects:["mathematics","english","computer","physics"], campus_year:rand(1..4), id_number:Faker::IDNumber.brazilian_id,location:Faker::Address.city, password:"5678",password_confirmation:"5678")    
    t3=Teacher.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, user_name:Faker::FunnyName.name, email:"dennismwangi14030@gmail.com", age:rand(18..26), campus:Faker::University.name, strong_subjects:["mathematics","english","computer","physics"], campus_year:rand(1..4), id_number:Faker::IDNumber.brazilian_id,location:Faker::Address.city, password:"5678",password_confirmation:"5678")    
    t4=Teacher.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, user_name:Faker::FunnyName.name, email:"dennismwangi14030@gmail.com", age:rand(18..26), campus:Faker::University.name, strong_subjects:["mathematics","english","computer","physics"], campus_year:rand(1..4), id_number:Faker::IDNumber.brazilian_id,location:Faker::Address.city, password:"5678",password_confirmation:"5678")    
    
    RequestedSession.create(parent_id:p1.id,teacher_id:t1.id, date:"2022-10-29", start_time:"8:00", end_time:"10:00")
    RequestedSession.create(parent_id:p1.id,teacher_id:t2.id, date:"2022-10-29", start_time:"8:00", end_time:"10:00")
    RequestedSession.create(parent_id:p2.id,teacher_id:t1.id, date:"2022-10-29", start_time:"8:00", end_time:"10:00")
    RequestedSession.create(parent_id:p2.id,teacher_id:t2.id, date:"2022-10-29", start_time:"8:00", end_time:"10:00")
    RequestedSession.create(parent_id:p3.id,teacher_id:t3.id, date:"2022-10-29", start_time:"8:00", end_time:"10:00")
    RequestedSession.create(parent_id:p3.id,teacher_id:t4.id, date:"2022-10-29", start_time:"8:00", end_time:"10:00")
    RequestedSession.create(parent_id:p4.id,teacher_id:t3.id, date:"2022-10-29", start_time:"8:00", end_time:"10:00")
    RequestedSession.create(parent_id:p4.id,teacher_id:t4.id, date:"2022-10-29", start_time:"8:00", end_time:"10:00")

    AcceptedSession.create(student_id:s1.id,teacher_id:t1.id,parent_id:p1.id, date:"2022-10-29", start_time:"8:00", end_time:"10:00")
    AcceptedSession.create(student_id:s1.id,teacher_id:t2.id,parent_id:p1.id, date:"2022-10-29", start_time:"8:00", end_time:"10:00")
    AcceptedSession.create(student_id:s2.id,teacher_id:t1.id,parent_id:p2.id, date:"2022-10-29", start_time:"8:00", end_time:"10:00")
    AcceptedSession.create(student_id:s2.id,teacher_id:t2.id,parent_id:p2.id, date:"2022-10-29", start_time:"8:00", end_time:"10:00")
    AcceptedSession.create(student_id:s3.id,teacher_id:t3.id,parent_id:p3.id, date:"2022-10-29", start_time:"8:00", end_time:"10:00")
    AcceptedSession.create(student_id:s3.id,teacher_id:t4.id,parent_id:p3.id, date:"2022-10-29", start_time:"8:00", end_time:"10:00")
    AcceptedSession.create(student_id:s4.id,teacher_id:t3.id,parent_id:p4.id, date:"2022-10-29", start_time:"8:00", end_time:"10:00")
    AcceptedSession.create(student_id:s4.id,teacher_id:t4.id,parent_id:p4.id, date:"2022-10-29", start_time:"8:00", end_time:"10:00")





puts "Done seeding"

