class CreateCardsModel < ActiveRecord::Migration
  def up
    create_table :cards do |t|
      t.string :email, nil: false
      t.string :country
      t.string :city
      t.integer :card_type_id
    end
  end

  def down
    drop_table :cards
  end
end
