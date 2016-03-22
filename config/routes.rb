Rails.application.routes.draw do
  root to: 'campaigns#index'
  resources :campaigns do
    resources :characters
    resource :dmaster
    resources :adventures
  end
end
