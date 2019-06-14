class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@jungle.com"
  
  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
  
end