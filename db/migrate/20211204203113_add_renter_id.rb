class AddRenterId < ActiveRecord::Migration[6.1]
  def change
      add_column :books, :renter, :string
  end
end
