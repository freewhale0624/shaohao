class Post < ActiveRecord::Base
  belongs_to :user
  acts_as_taggable

  validates :user, :title, presence: true
  enum status: [:publish, :draft]

  default_scope { order('created_at DESC') }
end
