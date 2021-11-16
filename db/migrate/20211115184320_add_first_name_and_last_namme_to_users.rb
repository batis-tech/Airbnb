class AddFirstNameAndLastNammeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :fName, :string
    add_column :users, :lName, :string
    add_column :users, :phone, :number
    add_column :users, :hoster, :boolean
  end
end
