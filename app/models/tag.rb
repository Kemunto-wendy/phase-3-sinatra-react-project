class Tag < ActiveRecord::Base
  has_many :authors
  has_many :companies, through: :authors
end
