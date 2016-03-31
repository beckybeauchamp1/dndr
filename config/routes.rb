Rails.application.routes.draw do
  root to: 'campaigns#index'

  # While this definitely would work, I would be a little cautious about having so many nested resources. Usually
  # The rule of thumb is having two nested resources. I think you could achieve the same functionality without as many being nested
  resources :campaigns do
    resources :characters do
      resource :ability
      resources :spells
    end
    resource :dmaster
    resources :adventures
  end
end
