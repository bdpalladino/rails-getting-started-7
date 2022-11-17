Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "articles#index"
  
  resources :articles do
    resources :comments
  end
end

# Reference:
# https://guides.rubyonrails.org/routing.html
# https://api.rubyonrails.org/v7.0.4/classes/ActionDispatch/Routing/Mapper/Resources.html#method-i-resources
# https://guides.rubyonrails.org/routing.html#controller-namespaces-and-routing