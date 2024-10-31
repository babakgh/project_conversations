class ActivityItemComponent < ViewComponent::Base
  def initialize(activity:)
    @activity = activity
  end

  def activity_type
    @activity.is_a?(Comment) ? 'comment' : 'status_change'
  end

  def timestamp
    @activity.created_at.strftime("%B %d, %Y at %I:%M %p")
  end
end
