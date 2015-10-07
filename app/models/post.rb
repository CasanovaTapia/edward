class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :status
  has_many :images, dependent: :destroy
  has_many :comments, dependent: :destroy

  default_scope { order('updated_at DESC') }
end
