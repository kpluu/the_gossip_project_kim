Rails.application.routes.draw do
  root "pages#index"
  get '/welcome/:user_first_name', to: 'pages#welcome'
  get '/team', to: 'pages#team'
  get '/contact', to: 'pages#contact'
  resources :gossips
  resources :users
  resources :city
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end