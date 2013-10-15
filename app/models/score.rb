class Score < ActiveRecord::Base
  attr_accessible :id, :all_around, :bars, :beam, :floor, :vault, :gymnast_id
  
  belongs_to :gymnast
  
  validates :vault, :bars, :beam, :floor, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 10, message: "Event scores can only be between 0.00 and 10.00"}
  validates :all_around, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 40, message: "All around can only be between 0.00 and 40.00"}
end
