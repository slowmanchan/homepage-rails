class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  validates :name, presence: true, length: { minimum: 5 }

end
