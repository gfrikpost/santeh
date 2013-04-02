class Content < ActiveRecord::Base
  attr_accessible :alias, :content
  
  validates :alias, :content, presence: true
  validates :alias, uniqueness: true
end
