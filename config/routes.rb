Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "damos/index",to: "damos#index"
  post "damos/create", to: "damos#create"
  get "damos/show", to: "damos#show"
  patch "damos/update", to: "damos#update"
  delete "damos/destroy", to: "damos#destroy"
end
