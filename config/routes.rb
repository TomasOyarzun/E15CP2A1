Rails.application.routes.draw do
	get 'histories/user_histories'
  devise_for :users, controllers: {
          registrations: "users/registrations", sessions: "users/sessions"
        }
  resources :histories
  root "histories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
