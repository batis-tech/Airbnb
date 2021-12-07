class RemoveIndex < ActiveRecord::Migration[6.1]
  def change
    remove_index :books, name: "index_books_on_hoster_id"

  end
end
