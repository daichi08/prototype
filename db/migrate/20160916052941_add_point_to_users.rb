class AddPointToUsers < ActiveRecord::Migration
  def change
    add_column :users, :have_point, :integer, default: 0
    add_column :users, :gacha_count, :integer, default: 0
  end
end
