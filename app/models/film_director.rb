class FilmDirector < ActiveRecord::Base
  belongs_to :film
  belongs_to :director
end
