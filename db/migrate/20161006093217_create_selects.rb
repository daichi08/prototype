class CreateSelects < ActiveRecord::Migration
  def change
    create_table :selects do |t|
      t.integer :question_id
      t.string :choices

      t.timestamps null: false
    end
  end
end
