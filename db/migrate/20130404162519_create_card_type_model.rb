class CreateCardTypeModel < ActiveRecord::Migration
  def up
    create_table :card_types do |t|
      t.string :name, :nill => false
      t.string :color, :nill => false
    end
  end

  def down
    drop_table :card_types
  end
end
