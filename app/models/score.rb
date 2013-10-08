class Score < ActiveRecord::Base
  attr_accessible :id, :all_around, :bars, :beam, :floor, :vault, :gymnast_id
  
  belongs_to :gymnast
end
