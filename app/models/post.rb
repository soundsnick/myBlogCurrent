class Post < ApplicationRecord
  mount_uploader :attachment, PostUploader
end
