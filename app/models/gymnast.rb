class Gymnast < ActiveRecord::Base
  attr_accessible :id, :classz, :college, :name, :meet_id
  
  belongs_to :meet
end
