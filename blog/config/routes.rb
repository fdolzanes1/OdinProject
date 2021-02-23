Rails.application.routes.draw do
  
  get 'articles/index'
  get "/articles", to: "articles#index"
end
