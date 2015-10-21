class User < ActiveRecord::Base
  has_many :photos
  has_many :tags

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
