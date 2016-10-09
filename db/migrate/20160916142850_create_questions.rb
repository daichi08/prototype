class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.datetime :period
      t.integer :have_point
      t.string :title
      t.text :content
      t.integer :style_id

      t.timestamps null: false
    end
  end
end
