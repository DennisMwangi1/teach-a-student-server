class RegisterMailer < ApplicationMailer
     default from: 'teach.a.student1@gmail.com'

  def welcome_email
    @user = params[:user]
    @student=params[:student]
    @url  = 'http://teach-a-student.com'
    mail(to: @user.email, subject: 'Welcome to Teach-A-Student')
  end
  
end
