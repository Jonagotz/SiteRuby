class CreateUserStatistics < ActiveRecord::Migration[7.0]
  def change
    create_table :user_statistics do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :right_questions, default: 0
      t.integer :wrong_questions, default: 0
      
      t.timestamps
    end
  end
end
