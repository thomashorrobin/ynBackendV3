class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start_at
      t.integer :duration_minutes
      t.string :title
      t.string :description
      t.references :City, index: true, foreign_key: true
      t.string :address

      t.timestamps null: false
    end
  end
end
