class UserMailer < ApplicationMailer
    def welcome_email(user)
        @user = user 
        @url = 'http://appacademy.com'
        mail(to: 'everybody@appacademy.io', subject: 'Welcome to my site')
    end
end
