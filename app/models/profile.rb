class Profile < ActiveRecord::Base
  belongs_to :industry
  mount_uploader :avatar, AvatarUploader
  default_scope { order('updated_at DESC') }
  validates_uniqueness_of :name
end
