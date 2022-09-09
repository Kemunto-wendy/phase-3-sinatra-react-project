class Author < ActiveRecord::Base
    has_one :blog
end
