class Review < ActiveRecord::Base
  attr_accessible :name, :review
  
  validates :name, :review, presence: true
end
