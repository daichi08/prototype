class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.datetime :period
      t.integer :have_point
      t.text :title
      t.text :content

      t.timestamps null: false
    end
  end
end
