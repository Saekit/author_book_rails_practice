class BookAuthorsController < ApplicationController

  def create
    @book_author = BookAuthor.new(book_author_params)
    if @book_author.save
      redirect_to book_path(book_author_params[:book_id])
    end
  end

  private

  def book_author_params
    params.require(:book_author).permit(:book_id, :author_id)
  end
end
