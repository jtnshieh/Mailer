Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :emails, only:[:create, :index]

  root "static_pages#root"
end
