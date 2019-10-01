class UserMailer < ActionMailer::Base
  default :from => "co1627@yahoo.com"

  def registration_confirmation(user)
    @user = user
    mail(:to => "#{user.email}", :subject => "Registration Confirmation")
  end
end
