Rails.application.routes.draw do
  root "articles#index"
  # resources :users
  # get 'articles/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# get('/articles', { to: 'articles#index' })
# get "/articles/:id", to: "articles#show", as: :article
resources :articles do
  resources :comments
  # Defines the root path route ("/")
  end
end
