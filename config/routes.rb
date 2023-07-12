Rails.application.routes.draw do
  # get 'twiits/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/twiits", to: "twiits#index"
  resources :twiits do
    collection do
      post :confirm
    end
  end
end
