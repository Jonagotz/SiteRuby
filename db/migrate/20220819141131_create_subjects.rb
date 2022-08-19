class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.string :description, null: false #, limit: 50

      t.timestamps
    end
  end
end
