class Film < ActiveRecord::Base
validates_uniqueness_of :title, :scope => :release_date
has_many :film_categories
has_many :categories, through: :film_categories

has_many :comments
has_many :users, through: :comments

has_many :film_actors
has_many :actors, through: :film_actors

has_many :film_directors
has_many :directors, through: :film_directors

has_many :rentals
has_many :users, through: :rentals

letsrate_rateable "rating"
acts_as_commentable

resourcify
end
