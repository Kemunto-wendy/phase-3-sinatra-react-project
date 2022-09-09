class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add routes
  get "/displays" do
    displays = Display.all
    displays.to_json
  end

  post "/displays" do
    new_display = Display.create(
      author: params[:author],
      blog: params[:blog],

    )

    new_display.to_json
  end

  patch "/displays/:id" do
    display = Display.find(params[:id])
    display.update(blog: params[:blog])
    display.to_json
  end

  delete "/displays/:id" do
    display = Printer.find(params[:id])
    display.destroy
    display.to_json
  end

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

  #Companies
  get "/companies" do
    companies = Company.all
    companies.to_json
  end

  post "/companies" do
    companies= Company.create(
      company_name: params[:company_name],
      address: params[:address],
      location: params[:location],
      phone: params[:phone],
      email: params[:email],

    )

    companies.to_json
  end

  patch "/companies/:id" do
    companies = Company.find(params[:id])
    companies.update(
      company_name: params[:company_name],
      address: params[:address],
      location: params[:location],
      phone: params[:phone],
      email: params[:email],
    )
    companies.to_json
  end

  delete "/companies/:id" do
    company= Company.find(params[:id])
    company.destroy
    company.to_json
  end

  #Tags
  get "/tags" do
   tags = Tag.all
   tags.to_json
  end

  post "/tags" do
    new_tag = Tag.create(
      company_name: params[:company_name],

    )

    new_tag.to_json
  end

  patch "/tags/:id" do
    tag = Tag.find(params[:id])
    tag.update(tag_name: params[:tag_name],)
    tag.to_json
  end

  delete "/tags/:id" do
   tag = Tag.find(params[:id])
    tag.destroy
    tag.to_json
  end
end
