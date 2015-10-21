class Photo < ActiveRecord::Base

  # a user owns the photo
  belongs_to :user

  # the photo has many labels
  has_many :tags

  # the photo has many users that could be tagged in it through "tags"
  has_many :tagged_users, class_name: "User", foreign_key: "user_id", through: :tags
end
