class Display < ActiveRecord::Base
  belongs_to :authors
  belongs_to :blogs
end
