class AddPricesToAttractions < ActiveRecord::Migration[6.1]
  def change
    add_column :attractions, :price, :integer
  end
end
