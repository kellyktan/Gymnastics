class Meet < ActiveRecord::Base
  attr_accessible :id, :date, :location, :name, :host_id
  
  has_many :gymnasts, :dependent => :destroy
  
  validates :name, presence: {message: "'Name' field cannot be blank"}, uniqueness: {message: "Meet with this name already exists", scope: :host_id}
end
