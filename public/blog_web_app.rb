require 'sinatra'
require 'json'

set :bind, '127.0.0.1'
set :port, 9292
set :view, settings.root + '/html'

DataMapper.setup(:default, sqlite:blog_web.db)

require 'pry'
class Author
    include DataMapper::Resource

    property :id, Serial
    property :name, Text, required:true
    property :email, Text, required:true
    property :location, Text, required:true

    has n, :tags, :constraint => destroy
end

class Blog
    include DataMapper::Resource

    property :id, Serial
    property :title, title, required:true
    property :content, Text, required:true
    property :author_id, Integer, required:true

    belongs_to :Author

end

DataMapper.finalize ( )
DataMapper.auto_upgrade! ( )


binding.pry
