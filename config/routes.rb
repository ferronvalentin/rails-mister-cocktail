Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  root 'cocktails#index'

    resources :cocktails do
      resources :doses, only: [:new, :create]
    end
    resources :doses, only: [:destroy]
end
