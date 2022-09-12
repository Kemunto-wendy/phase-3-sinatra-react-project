class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
      create_table :authors do |t|
        t.string :name
        t.string :location
        t.string :passion
        t.string :email

        t.timestamps
      end

  end
end
