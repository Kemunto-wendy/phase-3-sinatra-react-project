class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
        create_table :blogs do|t|
          t.string :title
         t.string :category
         t.string :content
         t.integer :author_id

         t.timestamps
  end
end
end
