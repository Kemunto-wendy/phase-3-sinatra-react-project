class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # Add routes
  get "/printers" do
    printers = Printer.all
    printers.to_json
  end

  post "/printers" do
    new_printer = Printer.create(
      body: params[:body],
      username: params[:username],

    )

    new_printer.to_json
  end

  patch "/printers/:id" do
    printer = Printer.find(params[:id])
    printer.update(body: params[:body])
    printer.to_json
  end

  delete "/printers/:id" do
    printer = Printer.find(params[:id])
    printer.destroy
    printer.to_json
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

  #MANUFACTURERS
  get "/manufacturers" do
    manufacturers = Manufacturer.all
    manufacturers.to_json
  end

  post "/manufacturers" do
    new_manufacturer = Manufacturer.create(
      company_name: params[:company_name],

    )

    new_manufacturer.to_json
  end

  patch "/manufacturers/:id" do
    manufacturer = Manufacturer.find(params[:id])
    manufacturer.update(company_name: params[:company_name],)
    manufacturer.to_json
  end

  delete "/manufacturers/:id" do
    manufacturer = Manufacturer.find(params[:id])
    manufacturer.destroy
    manufacturer.to_json
  end
end
