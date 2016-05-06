class Conversation < ActiveRecord::Base
  belongs_to :toy
  belongs_to :user

  def created_time
    "#{created_at.strftime('%r')} on #{created_at.strftime('%x')}"
  end

  def user_name
    user.name
  end

  def as_json(_ = nil)
    super(methods: [:created_time, :user_name])
  end
end
