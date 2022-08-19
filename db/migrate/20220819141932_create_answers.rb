class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.text :description, null: false
      t.references :question, null: false, foreign_key: true
      t.boolean :correct, default: false

      t.timestamps
    end
  end
end
