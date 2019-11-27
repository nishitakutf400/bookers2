Rails.application.routes.draw do
  # get 'books2/index'
  # get 'books2/show'
  # get 'books2/new'
  # get 'books2/edit'

  get 'home/about' =>'home#about'
  # get 'users/index'
  # get 'users/show'
  # get 'users/new'
  # get 'users/edit'
  # get 'books/index'
  # get 'books/show'
  # get 'books/new'
  # get 'books/edit'
  root to: 'books#top'
  resources :books
  devise_for :users
  # resources :post_images, only: [:new, :create, :index, :show]
  resources :users
  # resources :books2
  # resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end