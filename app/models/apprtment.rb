class Apprtment < ApplicationRecord
  mount_uploaders :images, ImageUploader
  serialize :dangerousThings
  serialize :images
  belongs_to :user
  has_many :books

  TAGS = %i[Security-camera(s) Weapons Dangerous-animals]

end
