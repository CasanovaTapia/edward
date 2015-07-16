class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :status

  default_scope { order('updated_at DESC') }
end
