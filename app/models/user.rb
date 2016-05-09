class User < ActiveRecord::Base
  attachment :profile_image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]


  has_many :toys

  has_many :sender_conversations, foreign_key: :sender_id, class_name: :Conversation
  has_many :recipient_conversations, foreign_key: :recipient_id, class_name: :Conversation

  has_many :wishes
  has_many :wants, through: :wishes, source: :toy


  def conversations
    sender_conversations | recipient_conversations
  end

  def self.from_omniauth(auth_hash)
    user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
    user.name = auth_hash['info']['name']
    user.location = auth_hash['info']['location']
    user.image_url = auth_hash['info']['image']
    user.url = auth_hash['info']['urls'][user.provider.capitalize]
    user.save!
    user
  end

end
