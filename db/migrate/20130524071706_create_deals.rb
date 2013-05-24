class CreateDeals < ActiveRecord::Migration
  def self.up
    create_table :deals do |t|
      t.string :schemetext , :limit => 1000
      t.string :desc, :limit => 5000
      t.string :vendor
      t.string :imageurl
      t.datetime :validupto
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :deals
  end
end
