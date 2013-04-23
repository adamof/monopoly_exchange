class AddTokenToCard < ActiveRecord::Migration
  def up
    add_column :cards, :token, :string, null: false
  end
  def down
    remove_column :cards, :token
  end
end
