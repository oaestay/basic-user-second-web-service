class UserNotifierMailer < ApplicationMailer
  default :from => 'oaestay.testapp@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signin_email(user, user_agent)
    @user = user
    @user_agent = user_agent
    mail( :to => @user.email,
    :subject => 'You have accessed your account!' )
  end
end
