class CreateFilmCategories < ActiveRecord::Migration
  def change
    create_table :film_categories do |t|
      t.references :film, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
