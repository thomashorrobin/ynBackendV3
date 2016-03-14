class CreateApplePhones < ActiveRecord::Migration
  def change
    create_table :apple_phones do |t|
      t.references :City, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :device_token

      t.timestamps null: false
    end
  end
end
