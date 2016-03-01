Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end
  devise_for :users
  root to: "articles#index"
end
