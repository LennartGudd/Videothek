class FilmActor < ActiveRecord::Base
  validates :actor_id, uniqueness: true
  belongs_to :film
  belongs_to :actor
end
