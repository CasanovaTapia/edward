class User < ActiveRecord::Base
  has_many :posts
  has_many :images

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def admin?
    role == 'admin'
  end
end
