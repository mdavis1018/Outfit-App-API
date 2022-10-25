Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  ## outfit routes
  get "/outfits" => "outfits#index"
  get "/outfits/:id" => "outfits#show"
  post "/outfits" => "outfits#create"
  patch "/outfits/:id" => "outfits#update"
  delete "outfits/:id" => "outfits#destroy"
end
