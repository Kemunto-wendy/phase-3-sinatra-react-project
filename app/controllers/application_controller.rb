class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  #The Authors part
  get "/authors" do
    authors = Author.all
    authors.to_json
  end

  post "/authors" do
    new_author = Author.create(
      name: params[:name],
      location: params[:location],
      passion: params[:passion],
      email: params[:email],

    )

    new_author.to_json
  end

  patch "/authors/:id" do
    author = Author.find(params[:id])
    author.update(name: params[:name],
                  location: params[:location],
                  passion: params[:passion],
                  email: params[:email])
    author.to_json
  end

  delete "/authors/:id" do
    author = Author.find(params[:id])
    author.destroy
    author.to_json
  end


  #The blogs part
  get "/blogs" do
    blogs = Blog.all
    blogs.to_json
  end

  post "/blogs" do
    new_blog = Blog.create(
      title: params[:title],
      category: params[:category],
      content: params[:content],
      author_id: params[:author_id],


    )

    new_blog.to_json
  end

  patch "/blogs/:id" do
    blog = Blog.find(params[:id])
    blog.update(
      title: params[:title],
      category: params[:category],
      content: params[:content],
      author_id: params[:author_id],

    )
    blog.to_json
  end

  delete "/blogs/:id" do
    blog = Blog.find(params[:id])
    blog.destroy
    blog.to_json
  end

end
