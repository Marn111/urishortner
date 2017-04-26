Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'admin#dashboard', action: "/", as: 'default_root'
  get '/:short_url', to: 'api/urls#goto_full_address', as: 'custom_root'

  namespace :api do
    post 'urls/shortner', to: 'urls#shortner'
  end
end
