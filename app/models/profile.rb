class Profile < ActiveRecord::Base
  belongs_to :industry
  mount_uploader :avatar, AvatarUploader
end
