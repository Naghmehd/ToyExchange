class Toy < ActiveRecord::Base
  geocoded_by :zip_code
  after_validation :geocode
  
  attachment :profile_image
  belongs_to :user

  has_many :conversations, dependent: :destroy

  has_many :wishes, dependent: :destroy
  has_many :wants, through: :wishes, source: :user

  def profile_image_url
    ActionController::Base.helpers.attachment_url(self, :profile_image, :fill, 300, 300, format: :png)
  end

  def as_json(_)
    super(methods: [:profile_image_url])
  end
end
