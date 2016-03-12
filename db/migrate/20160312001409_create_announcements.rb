class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.datetime :announced_at
      t.string :message
      t.references :Exec, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
