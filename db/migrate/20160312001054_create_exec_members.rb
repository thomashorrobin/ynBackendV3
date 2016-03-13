class CreateExecMembers < ActiveRecord::Migration
  def change
    create_table :exec_members do |t|
      t.string :possition
      t.references :exec, index: true, foreign_key: true
      t.references :individual, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
