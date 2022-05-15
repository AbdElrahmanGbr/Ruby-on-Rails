Rails.application.routes.draw do
  # get 'articles/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# get('/articles', { to: 'articles#index' })
# get "/articles/:id", to: "articles#show", as: :article
resources :articles
  # Defines the root path route ("/")
  root "articles#index"
end
