class Conversation < ActiveRecord::Base
  belongs_to :toy
  belongs_to :sender, class_name: :User
  belongs_to :recipient, class_name: :User

  has_many :messages, dependent: :destroy

  scope :between, -> (sender_id,recipient_id) do
    where("(conversations.sender_id = ? AND conversations.recipient_id =?)
    OR (conversations.sender_id = ? AND conversations.recipient_id =?)",
    sender_id, recipient_id, recipient_id, sender_id)
  end

  def created_time
    "#{created_at.strftime('%r')} on #{created_at.strftime('%x')}"
  end


  def as_json(_ = nil)
    super(methods: [:created_time, :user_name])
  end
end
