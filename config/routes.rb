Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :emails, only:[:create]

  root "static_pages#root"
end
