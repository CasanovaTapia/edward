Rails.application.routes.draw do
  devise_for :users
  root 'static#temp'

  # get 'about', to: 'static#about', as: :static_about
end
