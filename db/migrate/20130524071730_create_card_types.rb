class CreateCardTypes < ActiveRecord::Migration
  def self.up
    create_table :card_types do |t|
      t.string :type
      t.string :category
      t.string :name
      t.integer :bank_id

      t.timestamps
    end
  end

  def self.down
    drop_table :card_types
  end
end
