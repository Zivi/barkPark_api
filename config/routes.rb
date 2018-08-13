Rails.application.routes.draw do
  resources :counties do
    resources :items
  end
end
