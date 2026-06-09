Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  resources "entries"
  resources "places"
  resources "sessions"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources "users"
end
