class Meet < ActiveRecord::Base
  attr_accessible :date, :location, :name
  
  has_many :gymnasts
end
