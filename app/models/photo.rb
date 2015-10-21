class Photo < ActiveRecord::Base

  # a user owns the photo
  belongs_to :user

  # the photo has many labels
  has_many :tags

  # the photo has many users that could be tagged in it through "tags"
  has_many :tagged_users, class_name: "User", foreign_key: "user_id", through: :tags

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :image, attachment_presence: true
  validates_with AttachmentPresenceValidator, attributes: :image
  validates_with AttachmentSizeValidator, attributes: :image, less_than: 2.megabytes
end
