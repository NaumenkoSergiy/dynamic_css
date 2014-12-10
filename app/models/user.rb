class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :stylesheet

  after_create :add_stylesheet

  def add_stylesheet
  	color = ['red', 'green', 'grey'][rand(3)]
  	self.create_stylesheet!(contents: "h1 {color: #{color};}")
  end
end
