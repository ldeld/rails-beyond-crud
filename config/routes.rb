Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  
  resources :restaurants do 
    collection do 
      get "top"
    end
    member do
      get "chef"
    end

    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]

  # reviews/new
  # restaurants/top
  # restaurants/:id/chef

  # reviews/2
  # url to see the form to leave a review on a restaurant
end
