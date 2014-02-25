class Director < ActiveRecord::Base
has_many :film_directors
has_many :films, through: :film_directors
validates :name, uniqueness: true
end
