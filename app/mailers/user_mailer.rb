class UserMailer < ApplicationMailer

    def welcome_email(user, order)

        @user = user
        @order = order
        mail(to: @user.email, subject: 'Welcome Email')

    end
end
