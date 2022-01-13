class BooksController < ApplicationController
  def new
  end

  def index
    @book = Book.new
  end
  
  def create
    list = Book.new(book_params)
    list.save
    redirect_to book_path(list.id)
  end

  def show
  end

  def edit
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
