class ChangeColumnToArray < ActiveRecord::Migration[6.1]
  def change
      change_column :apprtments, :dangerousThings,:string, array: true
  end
end
