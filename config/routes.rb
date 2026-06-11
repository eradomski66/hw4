Rails.application.routes.draw do
  get("/", { :controller => "pages", :action => "index" })
  resources "entries"
  resources "places"
  resources "sessions"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  resources "users"
end
