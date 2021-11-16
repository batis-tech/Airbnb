class CreateApprtments < ActiveRecord::Migration[6.1]
  def change
    create_table :apprtments do |t|
      t.boolean :hostingAs
      t.string :dangerousThings
      t.string :price
      t.string :description
      t.string :amenities
      t.string :guestFavorites
      t.string :images
      t.string :title
      t.string :highlights
      t.string :street
      t.string :suit
      t.string :city
      t.string :state
      t.string :country
      t.string :zipCode
      t.string :rentingType
      t.string :place

      t.timestamps
    end
  end
end
