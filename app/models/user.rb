class User < ApplicationRecord
  has_many :comments
  has_many :project_status_changes
  validates :name, presence: true, uniqueness: true
end
