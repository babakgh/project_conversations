class Project < ApplicationRecord
  has_many :comments
  has_many :project_status_changes
  validates :name, presence: true

  enum status: {
    pending: 'pending',
    in_progress: 'in_progress',
    completed: 'completed'
  }

  def change_status(new_status, user)
    if status != new_status && self.class.statuses.include?(new_status)
      old_status = status
      update(status: new_status)
      project_status_changes.create(
        user: user,
        from_status: old_status,
        to_status: new_status
      )
    end
  end
end
