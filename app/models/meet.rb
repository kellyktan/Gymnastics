class Meet < ActiveRecord::Base
  attr_accessible :id, :date, :location, :name
  
  has_many :gymnasts
end
