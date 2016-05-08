class Toy < ActiveRecord::Base
  attachment :profile_image
  belongs_to :users

  has_many :wishes
  has_many :wants, through: :wishes, source: :user

end
