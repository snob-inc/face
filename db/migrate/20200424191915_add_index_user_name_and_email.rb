class AddIndexUserNameAndEmail < ActiveRecord::Migration[6.0]
  def change
    change_table :users, bulk: true do |t|
      t.index :name, unique: true
      t.index :email, unique: true
    end
  end
end
