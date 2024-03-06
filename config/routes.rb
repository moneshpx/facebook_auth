Rails.application.routes.draw do
  root 'static_pages#index'

  # Route for initiating Facebook authentication
  get '/auth/facebook', to: redirect('https://www.facebook.com/v12.0/dialog/oauth?client_id=954493346035032&redirect_uri=hhttp://localhost:3000/auth/facebook/callback&scope=email')

  # Route for handling the Facebook authentication callback
  get '/auth/facebook/callback', to: 'sessions#create'

  # Route for signing out
  get '/signout', to: 'sessions#destroy', as: :signout
end