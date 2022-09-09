class CreateBlog < ActiveRecord::Migration[6.1]
  def change
    t.string :title
    t.string :category
    t.string :content
    t.integer :author_id

    t.timestamps
  end
end
