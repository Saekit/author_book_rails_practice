Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  resources :authors
  resources :book_authors


  delete '/books/:book_id/authors/:author_id', to: 'books#delete_author_books'
end
