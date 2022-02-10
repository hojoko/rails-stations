Rails.application.routes.draw do
  get 'sheets', to: 'sheets#index' 
  resources :movies, only: [:index, :show]
  namespace :admin do
    resources :movies
    resources :schedules
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
