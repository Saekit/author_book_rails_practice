class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
    @authors = Author.all
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to @book
  end


  def delete_author_books
    @book_author = BookAuthor.find_by(author_id: params[:author_id], book_id: params[:book_id])
    @book_author.destroy
    redirect_to Book.find(params[:book_id])
  end

  def add_author_books
    byebug
  end

  private
  def book_params
    params.require(:book).permit(:title, :pages, :book_authors)
  end

end
