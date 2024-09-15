Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles, only: %i[index show]

  get '/me', to: 'user#show'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
end
