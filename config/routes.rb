Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: 'companies#index', as: :authenticated_root
  end

  root to: 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :companies do
    resources :reports, only: [:new, :create, :show, :edit, :update] do
      resources :report_questions, only: [:show, :edit, :update]
    end
  end
end
