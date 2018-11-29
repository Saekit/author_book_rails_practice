class Book < ApplicationRecord
  has_many :book_authors
  has_many :authors, through: :book_authors


  def new_author=(author)
    self.authors << author
  end

  def new_author
    nil
  end
end
