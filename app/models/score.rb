class Score < ActiveRecord::Base
  attr_accessible :id, :all_around, :bars, :beam, :floor, :vault, :gymnast_id
  
  belongs_to :gymnast
  
  validates :vault, :bars, :beam, :floor, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 10, message: "Event scores must be between 0.00 and 10.00"}
end
