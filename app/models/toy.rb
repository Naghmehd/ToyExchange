class Toy < ActiveRecord::Base
  attachment :profile_image
  belongs_to :user

  has_many :wishes
  has_many :wants, through: :wishes, source: :user

  def profile_image_url
    ActionController::Base.helpers.attachment_url(self, :profile_image, :fill, 100, 100, format: :jpg)
  end

  def as_json(_)
    super(methods: [:profile_image_url])
  end
end
