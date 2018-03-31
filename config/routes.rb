Rails.application.routes.draw do
  resources :costs
  resources :hosts
  resources :posts

  root to: 'posts#index'
end
