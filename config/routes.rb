Rails.application.routes.draw do
  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
  end
  resources :users
  # get 'articles/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get('/articles', { to: 'articles#index' })
  # get "/articles/:id", to: "articles#show", as: :article
  root "articles#index"
  resources :articles do
    resources :comments
    # Defines the root path route ("/")
  end
end
