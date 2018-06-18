Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#show'

  resources :words, only: [:index, :show, :new, :create] do
    resources :synonym_words, only: [:new, :create]
  end
end
