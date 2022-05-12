class RenameUserName < ActiveRecord::Migration[6.1]
  def change
    change_table :users do |t|
      t.rename :name, :first_name
    end
  end
end
