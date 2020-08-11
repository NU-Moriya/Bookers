class BooksController < ApplicationController
  
  
  def index
    @books = Book.all
  end
  
  def new
    @books =Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path(book.id)
    puts "Book was successfully created"
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book)
    puts "Book was successfully updated"
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
    puts "Book was successfully deleted"
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body )
  end
end
