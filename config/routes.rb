Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/experiences" => "experiences#index"
  post "/experiences" => "experiences#create"
  get "/educations" => "educations#index"
end

