class CreateTag < ActiveRecord::Migration[6.1]
  def change
    t.string :tag_name
  end
end
