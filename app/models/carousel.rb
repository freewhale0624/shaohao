class Carousel < ActiveRecord::Base
  mount_uploader :image, BannerUploader
end
