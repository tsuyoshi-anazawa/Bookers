class BooksController < ApplicationController
  def top
  end

  def index
  	@book = Book.new
  	@books = Book.all
  end

  def create
  	book = Book.new(book_params)
  	if
  	book.save
  	flash[:notice] = "Book was successfully created"
  	redirect_to book_path(book.id)
    end
  end

  def show
  	@book =Book.find(params[:id])
  end

  def edit
  	@book = Book.find(params[:id])
  end

  def update
  	book = Book.find(params[:id])
  	if
  	book.update(book_params)
  	flash[:update] = "Book was successfully edited"
  	redirect_to book_path(book.id)
    end
  end

  def destroy
  	book = Book.find(params[:id])
  	if
  	book.destroy
  	flash[:destroy] = "Book was successfully destroyed"
  	redirect_to books_path
    end
  end

  private
  def book_params
  	  params.require(:book).permit(:title, :body)
  end
end
