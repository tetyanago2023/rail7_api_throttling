Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      # localhost:3000/api/v1/numbers/single/3 => odd
      get 'numbers/single/:number', to: 'numbers#single'
      # Send a whole array, get back an array of odd/even
      post 'numbers/batch', to: 'numbers#batch'
    end
  end
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
