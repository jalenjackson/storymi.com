class WelcomeMailer < ApplicationMailer
  def welcome_send(user)
    @user = user
    mail to: user.email, subject: "#{@user.firstname} thank you for using TellAFiction!", from: 'tellafiction@tellafiction.com'
  end

end
