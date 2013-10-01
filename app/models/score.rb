class Score < ActiveRecord::Base
  attr_accessible :all_around, :bars, :beam, :floor, :vault
  
  belongs_to :gymnast
end
