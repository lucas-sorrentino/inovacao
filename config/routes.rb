Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } do 
  	
   end
   devise_scope :user do
   authenticated :user do
     root 'home#index', as: :authenticated_root
   end
 
   unauthenticated do
     root 'devise/sessions#new', as: :unauthenticated_root
   end
 end
end
