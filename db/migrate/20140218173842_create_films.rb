class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.integer :runtime
      t.string :cover
      t.date :release_date
      t.text :plot

      t.timestamps
    end
  end
end
