class CreateAnswerStyles < ActiveRecord::Migration
  def change
    create_table :answer_styles do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
