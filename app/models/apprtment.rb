class Apprtment < ApplicationRecord
  mount_uploaders :images, ImageUploader
  has_many_attached :images
  serialize :dangerousThings

end
