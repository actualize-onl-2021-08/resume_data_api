Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
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

