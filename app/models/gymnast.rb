class Gymnast < ActiveRecord::Base
  attr_accessible :id, :classz, :college, :name, :meet_id
  
  belongs_to :meet
  
  has_many :scores, :dependent => :destroy
  
  validates :name, presence: {message: "'Name' field cannot be blank"}, uniqueness: {message: "Gymnast with this name already exists"}
end
