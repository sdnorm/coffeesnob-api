class Comment < ActiveRecord::Base
  belongs_to :shop

  validates :message, presence: true 
end
