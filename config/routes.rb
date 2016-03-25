Rails.application.routes.draw do
  root to: 'campaigns#index'
  resources :campaigns do
    resources :characters do
      resource :ability
      resources :spells
    end
    resource :dmaster
    resources :adventures
  end
end
