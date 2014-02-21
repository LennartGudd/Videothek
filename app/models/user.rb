class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :rentals
has_many :films, through: :rentals

has_many :comments
has_many :films, through: :comments

letsrate_rater
end
