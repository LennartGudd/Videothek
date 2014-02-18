class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :film, index: true
      t.text :text

      t.timestamps
    end
  end
end
