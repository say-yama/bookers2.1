Rails.application.routes.draw do

  devise_for :users
  root to:"homes#top"
  resources :books,only:[:new,:create,:index,:show,:edit,:destroy]
  
  get 'homes/top'
  get "homes/about" => "homes#about",as:"about"
  get "books/:id" => "books#show"
  delete "books/:id" => "books#destroy", as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
