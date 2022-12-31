Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "homes/about" => "homes#about", as: "about"
  resources :books, only: [:create, :index, :show, :destroy, :edit, :updade]
  resources :users, only: [:show, :edit, :update]
end
