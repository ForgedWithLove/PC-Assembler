class ComputerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def show_computer(user)
    @user = user
    mail(to: @user.email, subject: 'Your computer')
  end
end
