class Conversation < ActiveRecord::Base
  belongs_to :toy
  belongs_to :user
  belongs_to :sender, :foreign_key => :sender_id, class_name: :user
  belongs_to :recipient, :foreign_key => :recipient_id, class_name: :user

  has_many :messages, dependent: :destroy

  validates_uniqueness_of :sender_id, :scope => :recipient_id

  scope :between, -> (sender_id,recipient_id) do
    where("(conversations.sender_id = ? AND conversations.recipient_id =?)
    OR (conversations.sender_id = ? AND conversations.recipient_id =?)",
    sender_id,recipient_id, recipient_id, sender_id)
  end

  def created_time
    "#{created_at.strftime('%r')} on #{created_at.strftime('%x')}"
  end

  def user_name
    user.name
  end

  def sender
    sender_id
  end

  def recipient
    recipient_id
  end

  def as_json(_ = nil)
    super(methods: [:created_time, :user_name])
  end
end
