Rails.application.routes.draw do
  devise_for :users

  get 'posts/home'
  root "posts#home"
  resources :posts
end
