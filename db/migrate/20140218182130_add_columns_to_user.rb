class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :firstname, :string
    add_column :users, :birthday, :date
    add_column :users, :street, :string
    add_column :users, :city, :string
    add_column :users, :zipcode, :string
  end
end
