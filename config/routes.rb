Rails.application.routes.draw do
  root to: 'health#index'

  namespace :api do
    namespace :v1 do
      resources :macros, only: :index
      resources :weighins, only: :index
    end
  end
end
