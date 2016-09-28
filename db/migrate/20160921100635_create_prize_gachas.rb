class CreatePrizeGachas < ActiveRecord::Migration
  def change
    create_table :prize_gachas do |t|
      t.integer :user_id
      t.integer :prize_id

      t.timestamps null: false
    end
  end
end
