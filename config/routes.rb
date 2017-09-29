Rails.application.routes.draw do
  resources :users
  post 'rest/verify_user/:email', to: 'users#verify', constraints: { email: %r{[^\/]+}}
end
