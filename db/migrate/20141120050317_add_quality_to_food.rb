class AddQualityToFood < ActiveRecord::Migration
  def change   #this method is rails magic
    add_column :foods, :quality, :integer #adding column of foods called quality and it is a string
    # can also do rename_column or remove_column
  end
end
