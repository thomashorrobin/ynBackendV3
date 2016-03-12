class CreateExecMembers < ActiveRecord::Migration
  def change
    create_table :exec_members do |t|
      t.string :possition
      t.references :Exec, index: true, foreign_key: true
      t.references :Individual, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
