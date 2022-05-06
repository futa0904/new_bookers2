Rails.application.routes.draw do
  root to:"homes#top"
  resources :books, only:[:create,:index,:show,:edit,:update,:destroy]
  resources :users, only:[:show,:edit,:update]
  get 'homes/about'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
