class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.string :card_type
      t.string :category
      t.string :name
      t.integer :bank_id

      t.timestamps
    end
  end

  def self.down
    drop_table :cards
  end
end
