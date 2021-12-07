class RenameHosterIdToHoster < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :hoster_id
  end
end
