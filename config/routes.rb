Rails.application.routes.draw do
  root 'static#about'

  get 'about', to: 'static#about', as: :static_about
end
