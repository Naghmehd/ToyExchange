class Toy < ActiveRecord::Base
  belongs_to :users

  has_many_wishes
  has_manu_wants, :thought => :wishes, :source => :toy

end
