class CreateFilmActors < ActiveRecord::Migration
  def change
    create_table :film_actors do |t|
      t.references :film, index: true
      t.references :actor, index: true

      t.timestamps
    end
  end
end
