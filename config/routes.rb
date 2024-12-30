Rails.application.routes.draw do
  resources :recipes, only: [:index, :new, :create] do
    collection do
      get 'search'
    end
  end

  root 'recipes#index'
end
