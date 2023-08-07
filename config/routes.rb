Rails.application.routes.draw do
  

  post "purchase/credit" =>"purchase#credit"
  get "purchase/check" => "purchase#check"

  
  
  get "cart/top" => "carts#top"
  delete "cart/:id/delete" =>"carts#delete"
  post "/products/cart" =>"products#cart"

  get "purchase/top" => "purchase#top"
  post "purchase/create" => "purchase#create"

  get "purchase/deal" => "purchase#deal"
  delete "purchase/action" => "purchase#action"
  get "purchase/action" => "purchase#action"

  
  get "products/top" => "products#top"




  get "products/:id" => "products#show"
  post "users/:id/update" => "users#update"

  get "/users/:id/edit" => "users#edit"

  post "/users/create" => "users#create"
  get "signup" => "users#new"

  get "users/:id" => "users#show"

  post "login" => "users#login"
  get "logout" => "users#logout"
  get "login" => "users#login_form"


  get "/" => "home#top"

end
