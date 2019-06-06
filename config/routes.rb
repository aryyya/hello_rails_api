Rails.application.routes.draw do
  get "say/hello"
  namespace :api do
    namespace :v1 do
      get "graph/:category", to: "graph#show"
    end
  end
  namespace :api do
    namespace :v1 do
      get "category/:category", to: "category#show"
    end
  end
end
