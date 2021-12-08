Rails.application.routes.draw do
  # #experiences routes
  get "/experiences" => "experiences#index"
  post "/experiences" => "experiences#create"
  get "/experiences/:id" => "experiences#show" 
  patch "/experiences/:id" => "experiences#update"
  delete "experiences/:id" => "experiences#destroy"
  #skills routes
  get "/skills" => "skills#index"
  post "/skills" => "skills#create"
  get "/skills/:id" => "skills#show" 
  patch "/skills/:id" => "skills#update"
  delete "skills/:id" => "skills#destroy"
  #capstonse routes
  get "/capstones" => "capstones#index"
  post "/capstones" => "capstones#create"
  get "/capstones/:id" => "capstones#show" 
  patch "/capstones/:id" => "capstones#update"
  delete "capstones/:id" => "capstones#destroy"

end

