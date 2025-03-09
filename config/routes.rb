Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resources :recipes
  resources :users
end
