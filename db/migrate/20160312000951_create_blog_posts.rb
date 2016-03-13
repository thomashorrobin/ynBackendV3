class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :content
      t.date :posted_on
      t.references :blog, index: true, foreign_key: true
      t.references :individual, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
