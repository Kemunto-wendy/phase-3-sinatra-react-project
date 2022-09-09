class CreateDisplay < ActiveRecord::Migration[6.1]
  def change
    t.string :author
    t.string :blog
  end
end
