class ChangeColumnToArrays < ActiveRecord::Migration[6.1]
  def change
    change_column :apprtments, :dangerousThings,:text, array: true
  end
end
