Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:create]
  end
  resources :doses, only: [:show]
end
