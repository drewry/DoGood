class AddParentIdToGoods < ActiveRecord::Migration
  def self.up
    add_column :goods, :parent_id, :integer
  end

  def self.down
    remove_column :goods, :parent_id
  end
end
