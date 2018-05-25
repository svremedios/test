class BooksController < ApplicationController

  def index

  end

  def show

  end

  def destroy
    Book.delete(params["id"])
    redirect_to "/books"

  end

  def reseed
     load "db/seeds.rb"
     redirect_to "/books"
  end
  
  def new

  end

  def create
    if params["hardcover"]=="hardcover"
      tmp=true
    else
      tmp=false
    end
    Book.create(title:params["title"],price:100*params["price"].to_f,hardcover:tmp,photo_url:params["photo_url"])
    if params.has_key?("another")
      redirect_to "/books/addnew"
    else
      redirect_to "/books"
    end

  end

  def edit

  end

  def update

  end

end
