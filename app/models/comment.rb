class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  default_scope { order('updated_at DESC') }
end
