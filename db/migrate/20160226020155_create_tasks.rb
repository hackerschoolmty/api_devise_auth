class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
