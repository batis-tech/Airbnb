class ChangeColumnImagesToArray < ActiveRecord::Migration[6.1]
  def change
    change_column :apprtments, :images, :text, array:true
  end
end
