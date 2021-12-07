class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.references :user, index: true, foreign_key: true
      t.references :hoster, index: true, foreign_key: true
      t.references :apprtment, index: true, foreign_key: true
      t.date :dateFrom
      t.date :dateTo
      t.string :price

      t.timestamps
    end
  end
end
