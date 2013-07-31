HackerNews::Application.routes.draw do

	root to: "links#index"

  resources :links, :comments

  resources :users, only: [:new, :create, :edit, :update, :destroy]
  resources :sessions, only: [:new, :create, :destroy]

end
