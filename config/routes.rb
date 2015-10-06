Rails.application.routes.draw do
  devise_for :users
  root 'static#temp'

  resources :posts do
    resources :images
  end

  resources :categories

  get 'know', to: 'static#about', as: :static_about
end
