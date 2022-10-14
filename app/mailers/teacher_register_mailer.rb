class TeacherRegisterMailer < ApplicationMailer
 default from: 'teach.a.student1@gmail.com'

  def teacher_welcome_email
    @user = params[:user]
    @url  = 'http://teach-a-student.com'
    mail(to: @user.email, subject: 'Welcome to Teach-A-Student')
  end
end
