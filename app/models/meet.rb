class Meet < ActiveRecord::Base
  attr_accessible :id, :date, :location, :name
  
  has_many :gymnasts
  
  validates :name, presence: {message: "'Name' field cannot be blank"}, uniqueness: {message: "Meet with this name already exists"}
end
