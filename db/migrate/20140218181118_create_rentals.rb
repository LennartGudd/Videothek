class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.references :film, index: true
      t.date :rental_date

      t.timestamps
    end
  end
end
