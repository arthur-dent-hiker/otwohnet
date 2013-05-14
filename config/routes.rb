Otwohnet::Application.routes.draw do
  mount UserImpersonate::Engine => "/impersonate", as: "impersonate_engine"

  resources :roles

  resources :categories
  resources :connection_invitations
  match 'connection_invitations/make' => "connection_invitations#make", :via=>:post, :as=>"new_connection_invitations"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end