class Wish < ActiveRecord::Base
  belongs_to :user
  belongs_to :toy
end
