class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :details
      t.date :deadline
      t.string :status

      t.timestamps
    end
  end
end
