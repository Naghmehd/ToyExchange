class Conversation < ActiveRecord::Base
  belong_to :users, through: :toys

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
