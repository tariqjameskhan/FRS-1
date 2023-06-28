Rails.application.routes.draw do
  # get 'companies/index'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :companies do
    resources :reports, only: [:new, :create, :show, :edit, :update]
  end
end
