class ChangeColumnImagesToArrays < ActiveRecord::Migration[6.1]
  def change
    change_column :apprtments, :images, :string, array: true
  end
end
