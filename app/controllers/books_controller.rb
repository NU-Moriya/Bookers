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
    if book.save
       redirect_to book_path(book)
       flash[:notice] = "Book was successfully created"
    else
      render "index"
    end
    
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    if book.update(book_params)
    redirect_to book_path(book)
    flash[:notice] = "Book was successfully updated"
    else
    render edit_book_path(book)
    end
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
    flash[:notice] = "Book was successfully deleted"
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body )
  end
end
