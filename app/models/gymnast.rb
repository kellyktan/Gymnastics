class Gymnast < ActiveRecord::Base
  attr_accessible :class, :college, :name
  
  belongs_to :meet
end
