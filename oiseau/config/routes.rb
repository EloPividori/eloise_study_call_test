Rails.application.routes.draw do
  resources :tags, param: :name do
    resources :messages
  end

  root "tags#index"
end
