class Post < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :tags

  accepts_nested_attributes_for :tags
  validates :user, :title, presence: true
end
