Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root 'admin/dashboard#index'

  devise_for :users

  namespace :admin do
    get '', to: 'dashboard#index', as: ''
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
