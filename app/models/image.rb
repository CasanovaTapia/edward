class Image < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  mount_uploader :avatar, AvatarUploader

  validates_presence_of :avatar
end
