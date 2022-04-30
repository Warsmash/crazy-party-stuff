class CreateAttractions < ActiveRecord::Migration[6.1]
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :one_liner
      t.text :description

      t.timestamps
    end
  end
end
