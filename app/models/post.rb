class Post < ActiveRecord::Base
  belongs_to :user
  acts_as_taggable

  validates :user, :title, presence: true
end
