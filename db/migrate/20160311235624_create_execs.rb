class CreateExecs < ActiveRecord::Migration
  def change
    create_table :execs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
