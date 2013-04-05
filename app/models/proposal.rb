class Proposal < ActiveRecord::Base
  attr_accessible :address, :description, :name, :phone
  
  validates :address, :description, :name, :phone, presence: true
  
  validates :phone, :numericality => { :only_integer => true }
  
end
