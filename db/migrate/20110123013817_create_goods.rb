class CreateGoods < ActiveRecord::Migration
  def self.up
    create_table :goods do |t|
      t.text :desc
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :goods
  end
end
