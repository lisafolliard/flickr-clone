class Tag < ActiveRecord::Base
  # belongs to user but calling it tagged_user
  belongs_to :tagged_user,  class_name: User,  foreign_key: :user_id

  # is a label ex mountain that you can return
  belongs_to :tagged_photo, class_name: Photo, foreign_key: :photo_id
end
