class Host < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :id, :email, :name, :password, :password_confirmation, :remember_me
  
  has_many :meets, :dependent => :destroy
  
  validates :name, :email, :password, presence: {message: "Field cannot be blank"}
  emailFormatValidation = /[a-z.-]+@[a-z \d .-]+.[a-z]+/i
  validates :email, format: {with: emailFormatValidation}, uniqueness: {case_sensitive: false}
end
