Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :recipes do
        resources :categories, :ingredients, :instructions
      end
      resources :ingredients, only: [:index, :show] do
        resources :recipes, only: [:index]
      end
      resources :categories, only: [:index, :show] do
        resources :recipes, only: [:index]
      end
    end
  end
end
