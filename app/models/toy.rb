class Toy < ActiveRecord::Base
  attachment :profile_image
  belongs_to :user

  has_many :wishes
  has_many :wants, through: :wishes, source: :user

end
