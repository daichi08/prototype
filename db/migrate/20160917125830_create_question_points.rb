class CreateQuestionPoints < ActiveRecord::Migration
  def change
    create_table :question_points do |t|
      t.references :question, index: true, foreign_key: true
      t.references :point, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
