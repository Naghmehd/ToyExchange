class Toy < ActiveRecord::Base
  belongs_to :users
  has_and_belongs_to_many :users,

  has_many :wishes
  has_many :wants, thought: :wishes, source: :toy

end
