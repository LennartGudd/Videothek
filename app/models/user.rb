class User < ActiveRecord::Base
  rolify

  after_create :assign_default_role

  def assign_default_role
    add_role(:user)
  end
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

validates_presence_of :name, :firstname, :birthday, :street, :city, :zipcode

has_many :rentals
has_many :films, through: :rentals

has_many :comments
has_many :films, through: :comments

letsrate_rater

end
