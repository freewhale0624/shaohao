class Message < ActiveRecord::Base
  default_scope -> { order(level: :asc, created_at: :desc) }

  validates :msg, :nickname, presence: true
  enum level: [:admin, :top, :normal]
  enum status: [:public, :private]
end
