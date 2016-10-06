# Preview all emails at http://localhost:3000/rails/mailers/user_notifier
class UserNotifierPreview < ActionMailer::Preview
  def send_email
    UserNotifier.send_email(Contact.first)
  end
end
