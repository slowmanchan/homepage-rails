class Contact < ActiveRecord::Base
  validates :first_name, :last_name, :email, :body, presence: true
  
end
