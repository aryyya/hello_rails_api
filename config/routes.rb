Rails.application.routes.draw do
  get "say/hello"
  namespace :api do
    namespace :v1 do
      get "graph/:category", to: "graph#show"
      get "category/:category", to: "category#show"
    end
  end
end
