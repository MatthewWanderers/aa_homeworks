class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user
    @url  = 'localhost/3000'
    mail(to: user.email, subject: 'Welcome to 99 Cats')
  end

  msg = UserMailer.welcome_email(@user)
  msg.deliver_now
end
