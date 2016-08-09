class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :Tasks do |t|
      t.string :title
      t.datetime :due_by
      t.string :assign_to
      t.text :description
      t.string :email
      t.datetime :note_at



      t.timestamps
    end
  end
end
