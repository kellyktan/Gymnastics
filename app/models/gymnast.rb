class Gymnast < ActiveRecord::Base
  attr_accessible :id, :classz, :college, :name, :meet_id
  
  belongs_to :meet
  
  has_many :scores, :dependent => :destroy
  
  scope :in_order, -> {order("name DESC")}
  
  validates :meet_id, presence: {message: "Field cannot be blank. Must create a meet first!"}
  validates :name, presence: {message: "Field cannot be blank"}, uniqueness: {message: "Gymnast with this name already exists", scope: :meet_id}
end
