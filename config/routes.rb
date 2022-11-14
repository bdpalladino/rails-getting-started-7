Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "articles#index"
  
  resources :articles
end

# Reference:
# https://guides.rubyonrails.org/routing.html
# https://api.rubyonrails.org/v7.0.4/classes/ActionDispatch/Routing/Mapper/Resources.html#method-i-resources