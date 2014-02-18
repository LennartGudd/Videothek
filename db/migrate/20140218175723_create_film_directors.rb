class CreateFilmDirectors < ActiveRecord::Migration
  def change
    create_table :film_directors do |t|
      t.references :film, index: true
      t.references :director, index: true

      t.timestamps
    end
  end
end
