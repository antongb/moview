class Review < ActiveRecord::Base
  validates_presence_of :moviename, :email, :rating
  validates :rating, :inclusion => 1..10
end
