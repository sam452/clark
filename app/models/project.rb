class Project < ActiveRecord::Base
  has_many :photographs
  
  attr_accessible :name
  validates_presence_of :name
end
