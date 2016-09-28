class CreatePointGachas < ActiveRecord::Migration
  def change
    create_table :point_gachas do |t|
      t.integer :user_id
      t.integer :point_id

      t.timestamps null: false
    end
  end
end
