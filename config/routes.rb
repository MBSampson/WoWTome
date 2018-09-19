Rails.application.routes.draw do
  resources :characters
  devise_for :users

  get 'tome_index', to: 'tome#index'

  devise_scope :user do
    authenticated :user do
      root 'tome#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  root to: 'characters#index'
end
