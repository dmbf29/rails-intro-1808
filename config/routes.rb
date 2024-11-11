Rails.application.routes.draw do
  # We will define any route in our app here
  # Rail routes
  # HTTP_Verb '/url_path', to: 'controller#action', as: :prefix (aka nickname)
  root to: 'pages#home'
  get '/about', to: 'pages#about', as: :about
  get '/contact', to: 'pages#contact', as: :contact
end
