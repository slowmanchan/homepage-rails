class UserNotifier < ApplicationMailer
  default :from => 'feedback homepage'

  def send_email(contact)
    @contact = contact
    mail( :to => 'slowmanchan@gmail.com', :subject => 'Homepage Feedback')
  end
end
