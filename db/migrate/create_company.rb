class CreateCompany < ActiveRecord::Migration[6.1]
  def change
    t.string :company_name
    t.string :address
    t.string :location
    t.string :phone
    t.string :email
  end
end
