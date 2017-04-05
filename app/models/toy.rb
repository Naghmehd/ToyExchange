class Toy < ActiveRecord::Base
  attachment :profile_image
  belongs_to :user

  has_many :conversations, dependent: :destroy

  has_many :wishes, dependent: :destroy
  has_many :wants, through: :wishes, source: :user

  delegate :geocode, to: :toys

  def profile_image_url
    ActionController::Base.helpers.attachment_url(self, :profile_image, :fill, 300, 300, format: :png)
  end

  def as_json(_)
    super(methods: [:profile_image_url])
  end

  def distance_to(current_user)
    current_user.distance_to(user.location).to_i rescue 0
  end
end
