Rails.application.routes.draw do
  # #experiences routes
  get "/experiences" => "experiences#index"
  post "/experiences" => "experiences#create"
  get "/educations" => "educations#index"
  post "/educations" => "educations#create"
  get "/educations/:id" => "educations#show"
  patch "/educations/:id" => "educations#update"
  delete "/educations/:id" => "educations#destroy"
  get "/students" => "students#index"
  post "/students" => "students#create"
  get "/students/:id" => "students#show" 
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"
end

