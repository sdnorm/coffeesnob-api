require 'securerandom'
class Shop < ActiveRecord::Base

  has_many :comments

  mount_uploader :photo, PhotoUploader

 before_validation on: :create do
   self.token = SecureRandom.hex
 end

 after_create do
   Pusher['coffeesnob-live'].trigger('shopCreated', {
     id: token
   })
 end


end
