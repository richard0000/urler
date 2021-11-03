Rails.application.routes.draw do
  get "/", to: "welcome#index"
  post "/link", to: "links#create", as: :create_link
  get "link/:slug", to: "links#show", as: :show_slug
end
