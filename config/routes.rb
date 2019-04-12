Rails.application.routes.draw do
	root to: 'books#top'
	resources :books
   'books/top'
   'books/index'
   'books/show'
   'books/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
