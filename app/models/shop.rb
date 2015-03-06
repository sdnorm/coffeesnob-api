require 'securerandom'
class Shop < ActiveRecord::Base

  has_many :comments
  has_many :votes

  mount_uploader :photo, PhotoUploader



 before_validation on: :create do
   self.token = SecureRandom.hex
 end
 

 after_create do
   Pusher['coffeesnob-live'].trigger('shopCreated', {
     id: token
   })
 end

 def average_rating
   if votes.count == 0
     return 0
   else
     votes.sum(:rating) / votes.count
   end
 end

end
