Rails.application.routes.draw do
  resources :characters
  resources :posts

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

  # Set secret#index for authentication rspec tests
  authenticated do
    root to: 'secret#index', as: :authenticated_test_root
  end

  root to: 'characters#index'
end
