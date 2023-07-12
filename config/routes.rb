Rails.application.routes.draw do
  get 'profiles/show'
  # get 'companies/index'
  devise_for :users

  authenticated :user do
    root to: 'companies#index', as: :authenticated_root
  end

  root to: "pages#home"

  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :companies do
    resources :reports, only: [:new, :create, :show, :edit, :update, :destroy] do
      resources :report_questions, only: [:show, :edit, :update]
    end
  end

  get "/companies/:company_id/reports/:id/action_plan", to: "reports#action_plan", as: :action_plan
  get "/companies/:company_id/reports/:id/fire_alarm", to: "reports#fire_alarm", as: :fire_alarm
  get "/companies/:company_id/reports/:id/fire_training", to: "reports#fire_training", as: :fire_training
  get "/companies/:company_id/reports/:id/fire_extinguishers", to: "reports#fire_extinguishers", as: :fire_extinguishers
  get 'profile', to: 'profiles#show'

end
