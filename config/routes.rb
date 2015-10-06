Rails.application.routes.draw do
  resources :profiles

  resources :industries

  devise_for :users
  root 'static#temp'

  resources :posts do
    resources :images
  end

  resources :categories

  get 'know', to: 'profiles#index', as: :profiles_index
  get 'about', to: 'static#about', as: :static_about
end
