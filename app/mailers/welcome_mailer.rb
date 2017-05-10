class WelcomeMailer < ApplicationMailer
  def welcome_send(user)
    @user = user
    mail to: user.email, subject: 'Welcome!', from: 'tellafiction@tellafiction.com'
  end

end
