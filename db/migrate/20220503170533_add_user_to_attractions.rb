class AddUserToAttractions < ActiveRecord::Migration[6.1]
  def change
    add_reference :attractions, :user, null: false, foreign_key: true
  end
end
