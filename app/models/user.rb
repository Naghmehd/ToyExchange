class User < ActiveRecord::Base
  include Clearance::User

  has_many :toys
  has_many :conversation, through: :toys
end
