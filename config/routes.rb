Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    #get '/users/sign-out => 'devise/session#destroy'
  end
  resources :students do
    collection do 
      get 'search'
    end
  end
  resources :sections do
    collection do
        get 'search'
    end
  end
  resources :courses do
    collection do 
      get 'search'
    end
  end
  root to: "courses#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
